#!/bin/bash

# This script decrunches the archiveteam's Geocities torrent.
# It is assumed that you kept the original structure and
# file names after finishing the download.

cd $GEO_SOURCE/geocities.archiveteam.torrent/

# RESYNC THE GEO_SOURCE TO CHECK THIS
# Is geocities.com.7z.001 the same as geocities.com.7z.001.part?
# Remove partial or empty downloads - EXTRACT AND COMPARE FIRST, are they unique?
# sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/geocities.com.7z.001.part |& tee $GEO_LOGS/001-decrunch1.log

# File contains zeroes.
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/ghiageocities.com.7z.001
# SUBSITES version contains zeroes. Uncorrupted version in YAHOO subfolder.
sudo rm $GEO_SOURCE/geocities.archiveteam.torrent/SUBSITES/mx.geocities.yahoo.com.7z.001
#CORRUPTED ROOT FILES WITH SIMILAR NAMES AS ABOVE (the ones with percentage signs)
sudo
sudo 


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

#real    361m21.098s
#user    799m53.967s
#sys     15m55.676s
