#!/usr/bin/perl

our $VERSION = 1.00;

=pod

This script compares checksums of local files belonging to the ArchiveTeam's GeoCities Torrent
with checksums published on archive.org. It can generate shell scripts that complete an aborted
torrent download by getting missing/broken parts from archive.org

Prerequisites:
- Complete the steps in the README.
- Get the eight files using 000-download-checksum-lists.sh

This is the directory that will hold all the files, so it should rest on a drive with ~700 GB
free space. If you started downloading the original GeoCities torrent or the patched torrent,
put these XML files into the existing directory.

Change to the directory containing the 2009-archiveteam-geocities-partX_files.xml files:
    
    cd $GEO_SOURCE/geocities.archiveteam.torrent/

Compare MD5 checksums via md5sum with expected values from archive.org and log to $GEO_LOGS/001-geo-torrent-checksums.sh
    
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part1_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part2_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part3_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part4_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part5_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part6_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part7_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl 2009-archiveteam-geocities-part8_files.xml |& tee -a $GEO_LOGS/001-geo-torrent-checksums.sh

The file $GEO_LOGS/001-geo-torrent-checksums.sh doubles as a script to download missing parts if checksums don't match.

Examine the contents of $GEO_LOGS/001-geo-torrent-checksums.sh.

Files with good checksums are commented out, errors show as wget commands. If you like what you see, run the generated script:

    bash $GEO_LOGS/001-geo-torrent-checksums.sh

This will then download down any missing/corrupt files.

EXTRA BONUS FILES

JCN
    cd $GEO_SOURCE/geocities-jcn-pack/
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl geocities-jcn-pack_files.xml |& tee -a $GEO_LOGS/001-geo-extras-checksums.sh

Latecomer
    cd $GEO_SOURCE/archiveteam-geocities-latecomer/
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl archiveteam-geocities-latecomer_files.xml |& tee -a $GEO_LOGS/001-geo-extras-checksums.sh

Santiago
    cd $GEO_SOURCE/archiveteam-geocities-santiago/
    $GEO_SCRIPTS/geocities.archiveteam.torrent/download/001-geo-torrent-checksums.pl archiveteam-geocities-santiago_files.xml |& tee -a $GEO_LOGS/001-geo-extras-checksums.sh


=cut

$| = 1; # turn on autoflush, bitches love autoflush!

use 5.10.0;
use warnings;
use strict;
use XML::TreePP; # The package name in Debian/Ubuntu for this library is
                 # libxml-treepp-perl
                 # Or get it from CPAN:
                 # http://search.cpan.org/~kawasaki/XML-TreePP-0.41/lib/XML/TreePP.pm

my %created_directories; # To avoid creating the same directory multiple times,
                         # save created ones here.

my $XML_file = shift (@ARGV);

my $tpp = XML::TreePP->new();
my $tree = $tpp->parsefile( $XML_file );


for my $file (@{$tree->{'files'}{'file'}}) {
    my $filename_xml = $file->{'-name'};

    next if ($filename_xml eq $XML_file); # Prevent the file containing the
                                          # checksums from being checksum-checked.
                                          # Apparently, the published checksums
                                          # do not match for these files. (???)

    my $checksum  = $file->{'md5'};

    my ($target_directory) = $filename_xml =~ m|^(\w+)/|;
    my ($target_filename)  = $filename_xml =~ m|([^/]+)$|;

    # if no target directory is present
    unless($target_directory) {
        # check if filename hints towards a 7z archive
        if ($target_filename =~ /^geocities/) {
            # The orginal torrent was separated into different directories.
            # On archive.org directory information was sometimes omitted.
            # Directories are restored according to the archive's file name.
            my ($order_char) = $target_filename =~ m|^geocities\-(\w)|;
            if( lc($order_char) eq $order_char) {
                $target_directory = 'LOWERCASE';
            } elsif ($order_char =~ /1\d$/) {
                $target_directory = 'NUMBER';
            } else {
                $target_directory = 'UPPERCASE';
            }
        }
    }
    
    my $local_filename = (($target_directory) ? "$target_directory/" : "") . $target_filename;

    my $expected = "$checksum *$local_filename\n";
    my $result = (-e $local_filename) ? `md5sum -b $local_filename` : '';
    
    # Problem?
    if ($expected ne $result) {
        say "# $local_filename damaged/incomplete";

        my ($remote_path) = $XML_file =~ m|^(.*)_files|;
        my $url = "http://www.archive.org/download/$remote_path/$filename_xml";
        
        if ($target_directory) {
            unless (exists $created_directories{$target_directory}) {
                say "mkdir -p $target_directory ;" if $target_directory;
                $created_directories{$target_directory} = 1;
            }
        }
        say "rm $local_filename ;" if (-e $local_filename); # HTTP is hopeless for damaged
                                                            # downloads, so let's start from
                                                            # the beginning.
        
        say "wget -O $local_filename -N $url ;";
    } 

    # Everything fine.
    else {
        say "# $local_filename ok";
        $created_directories{($target_directory || '.')} = 1; # directory can be considered existing!
    }
}
