#!/bin/bash

# This script decrunches ArchiveTeam's GeoCities Torrent.
# https://wiki.archiveteam.org/index.php/GeoCities
# It is assumed that you kept the original structure and filenames after finishing the download.
# Make sure your environment variables are set as per 000a-setup.txt at https://github.com/ShaneMcRetro/GeoCities

cd $GEO_SOURCE/geocities.archiveteam.torrent/

# Remove files that contain nothing but zeroes.

sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/ghiageocities.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/mx.geocities.yahoo.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fghiageocities.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fmx.geocities.yahoo.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fghiageocities.com.7z.001_meta.txt
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fmx.geocities.yahoo.com.7z.001_meta.txt

# Find all 7z archives and decrunch them.
# The option -P8 means "run eight 7zip decrunchers at the same time".
# Adjust the number to the number of cores (or threads) your processor has.
# If a duplicate file is extracted the -aou flag appends _1 to the extracted file.

find . -name \*.7z.001 | xargs -P8 -I filename 7z x -aou filename -o$GEO_WORK |& tee -a $GEO_LOGS/001-decrunch.log

# Tidy up and remove some decrunched duplicates, where did they come from? 001, but their MD5s match so we will remove them.

cd $GEO_WORK
rm geocities.yahoo_1.com geocities.yahoo.co_1.jp ar.geocities.yahoo_1.com uk.geocities.yahoo_1.com us.geocities.yahoo_1.com visit.geocities.yahoo_1.com themis.geocities.yahoo_1.com

# Check the $GEO_LOG/001-decrunch.log for any errors encountered (search keyword "error" or "fail", probably)

# real  249m14.277s
# user  894m58.437s
# sys   27m46.601s
