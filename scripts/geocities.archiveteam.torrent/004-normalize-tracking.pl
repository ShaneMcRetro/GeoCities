#!/usr/bin/perl

# Find tracking inserted into html files by the GeoCities server.
# and normalize all letters to 'a' and all digits to '0'.
# This gets rid of date / time stamps that were making otherwise identical files different.
# Should result in files changed to have the following universal string:
# <IMG SRC="http: //geo.yahoo.com/serv?5=00000000&t=0000000000&f=aa-a0" ALT=1 WIDTH=1 HEIGHT=1>
# Also, we can then use Apache rewrite module to either remove or change to any code we want.

our $VERSION = 1.00;

use 5.12.0;
use warnings;
use diagnostics;
use strict;
use IO::All;
use File::Find;
use File::stat;

$| = 1; # turn on autoflush

# chdir("$ENV{GEO_WORK}/geocities");
chdir("$ENV{GEO_WORK}/");

find({wanted => \&normalize, no_chdir => 1}, '.');

sub normalize {
    # Is it a file?
    # We will process many file types as not only are *.html affected. There are some *.jpg files that are actually html.
    # If the pattern searched for is not found, it will not be replaced, and the file remain unmodified.
    # This helps big time against the symlink cancer!
    if(-f) {
        my $filename = $_;
        my $file = io($filename)->binary->all;  # load it
        
        (my $newfile = $file) =~                # try changing the tracking GIF URL
           s|
                "http://visit.geocities.yahoo.com/visit.gif\?\w{2}(\d+)"
            |{
                '"http://visit.geocities.yahoo.com/visit.gif?aa' . ('0' x length($1)) . '"'
            }|gex;
        
        $newfile =~                             # try changing the Geotracking GIF URL
           s|
                "http://geo.yahoo.com/serv\?s=(\d+)&t=(\d+)&f=\w{2}-\w{2}"
            |{
                '"http://geo.yahoo.com/serv?s=' . ('0' x length($1)) . '&t=' . ('0' x length($2)) . '&f=aa-a0"'
            }|gex;
        
        # if something was indeed changed
        if($newfile ne $file) {
            my $mtime = stat($filename)->mtime; # save the file's original 'last-modified'
            $newfile > io($filename)->binary;   # write the modified file to disk
            utime(time, $mtime, $filename);     # restore the old 'last-modified' time
            say $filename;
        }
    }
}


# Ubuntu 12.04
# real    393m26.623s
# user    189m17.489s
# sys     64m57.897s
