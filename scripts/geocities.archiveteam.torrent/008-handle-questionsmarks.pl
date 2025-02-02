#!/usr/bin/perl

# Find all files containing a question mark and check if this version of the file is really needed.
# Does the question mark version contain something different than the same file without a question mark.
# Most of the URL parameters are targeted at Javascripts running in client-side and not server-side.
# Most GeoCities users had no way of running server-side software apart from the GeoCities provided cgi scripts. 
#
# perl 008-handle-questionsmarks.pl
#

use feature ':5.14';
use warnings;
use diagnostics;
use strict;
use IO::All;
use File::Find;
use File::stat;

$| = 1; # turn on autoflush

# Process the entire work folder, including conflicts
chdir($ENV{GEO_WORK} . '/');

find({wanted => \&handle, no_chdir => 1}, '.');

sub handle {
    chomp;
    my $original_filename = $File::Find::name;

    # only files please!
    return unless( -f $original_filename);

    # Only files with question marks please!
    return unless ($original_filename =~ /(^.+?)\?/);

    # Let's leave YAHOO search strings intact.
    return if ($original_filename =~ /search\.yahoo\.com/);


    # The File name without the "search string" (cut off from
    # the question mark). Trying not to cause too much trouble by
    # making sure that the file name's first character is not
    # a question mark.
    my ($shortened_filename) = $original_filename =~ m|(^.+?)\?|;
    
    # If it is not possible to make a shortened file name, cancel.
    return unless ($shortened_filename);

    
    
    # If there is no file with the shortened file name, just rename
    # the question mark version to contain no question mark.
    unless( -f $shortened_filename) {
        system(('mv', '-v', $original_filename, $shortened_filename));
        return;
    }

    # If there is already a file with the same name without the
    # "search" part of the URL, things need to be checked!
    else {

        # Delete superfluous Apache index files. These were
        # generated by the Geocities web server in directories
        # where the user did not provide their own index file.
        # Such a directory listing would contain parametrized links
        # to itself, in which the files would be ordered by
        # different criteria: name, mod-time, size and description,
        # in ascending or descending order. These parametrized
        # versions can safely be discarded as long as at least
        # one regular index.html is present.
        #
        # The regular handling would catch this case, but like
        # this a few miliseconds per file are saved!!
        
        if ($original_filename =~ /index\.html\?[NMSD]=[DA]/) {
            system(('rm', '-v', $original_filename));
            return;
        }

        # Check timestamps and contents of the files.

        my $timestamp_orginal   = stat($original_filename)->mtime;
        my $timestamp_shortened = stat($shortened_filename)->mtime;

        my ($checksum_original)  = fexec('sha1sum', '-b', $original_filename)  =~ m|^(\S+)|;
        my ($checksum_shortened) = fexec('sha1sum', '-b', $shortened_filename) =~ m|^(\S+)|;

        # Both files same contents?
        if($checksum_original eq $checksum_shortened) {
            
            # If the timestamps differ, preserve the lower
            # time stamp because it is more likely correct.
            unless($timestamp_orginal == $timestamp_shortened) {
                my $lower_timestamp = $timestamp_orginal;
                $lower_timestamp = $timestamp_shortened if ($timestamp_shortened < $timestamp_orginal);
                utime(time, $lower_timestamp, $shortened_filename);
            }

            # Since both files contain the same data, delete
            # the one with a question mark in the name.
            system(('rm', '-v', $original_filename));
        }
        # If both files do not contain the same data
        # we will have to live with a file containing 
        # a question mark in its name.
        else {
            say "keeping $original_filename";
        }
    }
    
}

# for documentation of the fexec function see
# 'merge_directories.pl'!

sub fexec {
    my $pid = open(FORK, "-|");
    my @result;
    # the fork
    if ($pid==0) { 
        exec(@_)
            or die "no exec: $!";
        exit;
    }
    # main process
    else {         
        @result = <FORK>;
    }
    close(FORK);
    return join('', @result);
}


# Ubuntu 12.04
# real	11m29.760s
# user	3m49.755s
# sys	6m58.256s

# Now that that is out of the way do a full backup.
# sudo dd if=/dev/sdX of=/dev/sdX bs=4M status=progress

