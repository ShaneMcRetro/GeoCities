#!/bin/bash

# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  994G  875G   54%   /media/ubuntu/GC_2TB        # aka $GEO_WORK

# Merge geocities.com folders into www.geocities.com

cd $GEO_WORK/geocities/
$GEO_SCRIPTS/merge_directories.pl geocities.com www.geocities.com

# Save conflicts, this will also delete the geocities.com folder once it is empty.
# The contents of geocities.com that could not be merged are now considered conflicts.
# We save this data for processing in the database later on.

cd $GEO_WORK/geocities/
mkdir -p $GEO_WORK/geocities_conflicts_1/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl geocities.com $GEO_WORK/geocities_conflicts_1/www.geocities.com


# real  5m43.016s
# user  3m6.818s
# sys   2m37.603s