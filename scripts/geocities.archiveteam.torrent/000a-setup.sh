#!/bin/bash

# NOTE: Step through these one by one.
# NOTE: Step through these one by one.
# NOTE: Step through these one by one.


# You need a decent amount of hard drive space to work with GeoCities. I used a pair of SSDs.
# - 1TB for the source data (from torrent or archive.org).
# - 2TB for the work space and final data set.
# - Use ext4 as the file systems. GeoCities was case-sensitive.


# We need to make sure all dependencies are installed upfront for Ubuntu 22.04.

# Install additional Perl Modules via apt; we do not use cpan here.
# These are needed for DBI, Data::Dumper, IO::All, Try::Tiny, XML::TreePP, DBD::Pg, YAML qw(LoadFile)
sudo apt update && sudo apt install libdbi-perl libdata-dumper-simple-perl libio-all-perl libtry-tiny-perl libxml-treepp-perl libdbd-pg-perl libconfig-yaml-perl

# Install other things that are needed, convmv (UTF-8), postgresql (database magic)
sudo apt install build-essential p7zip-full convmv postgresql libpq-dev libglib2.0-bin findutils




# Next let's setup some environment variables.
sudo nano ~/.bashrc


# Replace the username and name your drives appropriately.

export GEO_SOURCE=/media/shane/GC_1TB                   # Source distribution files; 1TB drive
export GEO_WORK=/media/shane/GC_2TB/work                # Work/tmp directory; 2TB drive
export GEO_ARCHIVE=/media/shane/GC_2TB/archive          # Final data set

export GEO_LOGS=/media/shane/GC_2TB/log                 # Log files and lists
export GEO_SCRIPTS=/media/shane/GC_2TB/scripts          # Where the magic lives (software)
export GEO_SCREENSHOTS=/media/shane/GC_2TB/screenshots  # screenshots dir (Why?)

export GEO_DB_HOST='localhost'                          # database access
export GEO_DB_DB='Turtles'								# PostgreSQL database name
export GEO_DB_USER='despens'							# PostgreSQL database user
export GEO_DB_PASSWD='despens'							# PostgreSQL database password



# Some scripts will wipe temporary files after they are run. The only versions kept will be:
# - the originals (as in how the data was distributed, located in $GEO_SOURCE/geocities.archiveteam.torrent,
# - and the finished, workable archive files, located in $GEO_ARCHIVE
