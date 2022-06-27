#!/bin/bash

# This script decrunches the archiveteam's Geocities torrent.
# It is assumed that you kept the original structure and
# file names after finishing the download.

cd $GEO_SOURCE/geocities.archiveteam.torrent/

# File contains zeroes.
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/ghiageocities.com.7z.001
# SUBSITES version contains zeroes. Uncorrupted version in YAHOO subfolder.
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/mx.geocities.yahoo.com.7z.001
# Files containing nothing but zeroes and have a bonus malformed forward slash (%2F)
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fghiageocities.com.7z.001
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES%2Fmx.geocities.yahoo.com.7z.001


# Find all 7z archives and decrunch them. The option -P4 means
# "run 4 7zip decrunchers at the same time". Adjust the number to
# the number of cores your processor has.
# -aou flag renames extracted file if a duplicated with an _1 (or _2 if double duplicated!).

find . -name \*.7z.001 | xargs -P4 -I filename 7z x -aou filename -o$GEO_WORK |& tee -a $GEO_LOGS/001-decrunch.log

# Remove decrunched duplicates, where did they come from? I do not know...
cd $GEO_WORK
sudo rm geocities.yahoo_1.com geocities.yahoo.co_1.jp ar.geocities.yahoo_1.com uk.geocities.yahoo_1.com us.geocities.yahoo_1.com visit.geocities.yahoo_1.com themis.geocities.yahoo_1.com

# ON THE NEXT RUN
# This creates duplicates files, why was this here? Confirm /media/shane/GeoCities2TB/work/geocities/geocities.com/1christlover exists with one index.html
# 7z x -aou $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/geocities.com.7z.001 -o$GEO_WORK  |& tee $GEO_LOGS/001-decrunch_extra.log
# If confirmed to exist, delete this block.

#real    361m21.098s
#user    799m53.967s
#sys     15m55.676s
