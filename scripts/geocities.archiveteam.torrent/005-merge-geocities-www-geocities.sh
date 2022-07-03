#!/bin/bash

# Before starting this the $GEO_WORK folder contains:
# Probably around 39,583,750 items (minus symlinks), totalling ~910.4 GB.
# I'll update once it finishes calculating... could take a few days.

# Merge geocities.com into www.geocities.com

cd $GEO_WORK/geocities/
$GEO_SCRIPTS/merge_directories.pl geocities.com www.geocities.com

# save conflicts
mkdir -p $GEO_WORK/geocities_conflicts_1/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl geocities.com $GEO_WORK/geocities_conflicts_1/www.geocities.com


# real    4m39.263s
# user    0m8.661s
# sys 0m30.210s
