#!/bin/bash

# This script decrunches the archiveteam's Geocities torrent.
# It is assumed that you kept the original structure and
# file names after finishing the download.

cd $GEO_SOURCE/geocities.archiveteam.torrent/

# Remove partial download - EXTRACT AND COMPARE FIRST, is it unique?
# sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/geocities.com.7z.001.part |& tee $GEO_LOGS/001-decrunch.log

# Find all 7z archives and decrunch them. The option -P4 means
# "run 4 7zip decrunchers at the same time". Adjust the number to
# the number of cores your processor has.
# -aou flag renames extracted file if a duplicated.

find . -name \*.7z.001 | xargs -P4 -I filename 7z x -aou filename -o$GEO_WORK |& tee $GEO_LOGS/001-decrunch.log

# Does this need to be done? Or is this creating duplicates?
# 7z x -aou $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/geocities.com.7z.001 -o$GEO_WORK  |& tee $GEO_LOGS/001-decrunch.log

#real    361m21.098s
#user    799m53.967s
#sys     15m55.676s
