#!/bin/bash

# The $GEO_WORK folder :
# Should be ~39,507,391 items, totalling 911.0 GB via properties in GNOME.

# The entire drive should report 994 GB used, 873.8 GB free via disk properties (Alt-Return in root)
# df -h reports size as 1.8T , 926G used, 814G free.
# df -H reports size as 2.0T , 994G used, 874G free.

# Merge geocities.com into www.geocities.com

cd $GEO_WORK/geocities/
$GEO_SCRIPTS/merge_directories.pl geocities.com www.geocities.com

# save conflicts
mkdir -p $GEO_WORK/geocities_conflicts_1/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl geocities.com $GEO_WORK/geocities_conflicts_1/www.geocities.com


# real    4m39.263s
# user    0m8.661s
# sys 0m30.210s
