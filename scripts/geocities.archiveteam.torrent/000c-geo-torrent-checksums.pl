#!/usr/bin/perl

our $VERSION = 1.00;

=pod



This script compares checksums of local files belonging to the ArchiveTeam's GeoCities Torrent with checksums published on archive.org.

It can generate shell scripts that complete an aborted torrent download by getting missing/broken parts from archive.org. Yep, it's a bit weird to have commands commented in a perl script.

Prerequisites:
- Complete the steps in the README and 000a
- Get the eleven (8x archiveteam, 1x latecomer, 1x santiago, 1x jcn) checksum files using 000b-download-checksum-lists.sh

The directory below will hold all the work files, so it should rest on a drive with ~700 GB free space. If you started downloading the original GeoCities torrent or the patched torrent, put these XML files into the existing directory.

Change to the directory containing the 2009-archiveteam-geocities-partX_files.xml files:
    
cd $GEO_SOURCE/geocities.archiveteam.torrent/

Compare MD5 checksums via md5sum with expected values from archive.org and log to $GEO_LOGS/001-geo-torrent-checksums.sh. This takes around 15 minutes per .xml.
    
$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part1_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   12m32.667s
user   4m48.974s
sys    1m8.075s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part2_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   13m59.323s
user   5m21.289s
sys    1m15.963s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part3_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   12m41.598s
user   4m40.592s
sys    1m8.030s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part4_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   8m7.615s
user   2m52.543s
sys    0m42.237s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part5_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   15m5.956s
user   5m33.568s
sys    1m18.890s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part6_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   15m52.209s
user   5m33.454s
sys    1m20.129s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part7_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   15m49.514s
user   5m25.736s
sys    1m19.246s


$GEO_SCRIPTS/geocities.archiveteam.torrent/000c-geo-torrent-checksums.pl 2009-archiveteam-geocities-part8_files.xml |& tee -a $GEO_LOGS/000c-geo-torrent-checksums.sh
real   14m7.128s
user   4m38.829s
sys    1m5.381s



The bash script created at $GEO_LOGS/000c-geo-torrent-checksums.sh helps to download missing parts if there's a checksum mismatch.

Examine the contents of $GEO_LOGS/000c-geo-torrent-checksums.sh. 

Files with good checksums are commented out. Mismatched checksums, i.e. corrupted data, show as wget commands. If you like what you see, run the generated script:

bash $GEO_LOGS/000c-geo-torrent-checksums.sh

This will then download down any missing/corrupt files.

Next up, three more sources. I don't know how to script any of this... so errr we'll just keep going.

JCN, Latecomer and Santiago

JCN:
cd $GEO_SOURCE/geocities-jcn-pack/
md5sum geocities.jcn-grab.tar.bz2
    
If MD5 does not match 4a8879b9b48947fd3b340c2f6b9ec157:
wget -cv https://archive.org/download/geocities-jcn-pack/geocities.jcn-grab.tar.bz2
    
Latecomer:
cd $GEO_SOURCE/archiveteam-geocities-latecomer/
md5sum gc.tar.xz

If MD5 does not match 5f65f3a3f656d29fecee674fa8d963c2:
wget -cv https://archive.org/download/archiveteam-geocities-latecomer/gc.tar.xz

Santiago:
cd $GEO_SOURCE/archiveteam-geocities-santiago/
md5sum 2012-06-geocities-catchup.zip archived_geocities_stuff_by_lord_nightmare.tar.gz

If MD5 does not match 3198321f90792afeeda24174cd9a845b AND 5b6f33d81064ea671af41fc3e573e92c respectively:
wget -cv https://archive.org/download/archiveteam-geocities-santiago/2012-06-geocities-catchup.zip
wget -cv https://archive.org/download/archiveteam-geocities-santiago/archived_geocities_stuff_by_lord_nightmare.tar.gz

Our data is intact, head on to the next script to begin the decrunch.


=cut

$| = 1; # turn on autoflush, bitches love autoflush!

use 5.10.0;
use warnings;
use strict;
use XML::TreePP; # Debian/Ubuntu - sudo apt install libxml-treepp-perl

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
