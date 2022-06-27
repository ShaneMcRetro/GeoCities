#!/bin/bash

# This script decrunches ArchiveTeam's GeoCities Torrent.
# https://wiki.archiveteam.org/index.php/GeoCities
# It is assumed that you kept the original structure and filenames after finishing the download.
# Make sure your environment variables are set as per README at https://github.com/ShaneMcRetro/GeoCities

cd $GEO_SOURCE/geocities.archiveteam.torrent/

# Remove files that contain nothing but zeroes.
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/ghiageocities.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/mx.geocities.yahoo.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fghiageocities.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fmx.geocities.yahoo.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fghiageocities.com.7z.001_meta.txt
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fmx.geocities.yahoo.com.7z.001_meta.txt

# Find all 7z archives and decrunch them.
# The option -P4 means "run 4 7zip decrunchers at the same time".
# Adjust the number to the number of cores your processor has.
# If a duplicate file is extracted the -aou flag appends _1 to the extracted file.

find . -name \*.7z.001 | xargs -P4 -I filename 7z x -aou filename -o$GEO_WORK |& tee -a $GEO_LOGS/001-decrunch.log

# Remove decrunched duplicates, where did they come from? I do not know but those MD5s do match so... rm, rm, rm.

cd $GEO_WORK
sudo rm geocities.yahoo_1.com geocities.yahoo.co_1.jp ar.geocities.yahoo_1.com uk.geocities.yahoo_1.com us.geocities.yahoo_1.com visit.geocities.yahoo_1.com themis.geocities.yahoo_1.com

# ON THE NEXT RUN
# This creates duplicates files, why was this here? Confirm /media/shane/GeoCities2TB/work/geocities/geocities.com/1christlover exists with one index.html
# 7z x -aou $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/geocities.com.7z.001 -o$GEO_WORK  |& tee $GEO_LOGS/001-decrunch_extra.log
# If confirmed to exist, delete this block.
