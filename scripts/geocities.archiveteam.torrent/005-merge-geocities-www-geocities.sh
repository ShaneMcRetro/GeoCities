#!/bin/bash

# The $GEO_WORK folder:
# Should contain ~39,507,391 items, totalling 911.0 GB via properties in GNOME.

# The entire drive should report 994 GB used, 873.8 GB free via disk properties (Alt-Return as root)
# df -h reports size as 1.8T, 926G used, 814G free.
# df -H reports size as 2.0T, 994G used, 874G free.

# Merge geocities.com folders into www.geocities.com
cd $GEO_WORK/geocities/
$GEO_SCRIPTS/merge_directories.pl geocities.com www.geocities.com

# Save conflicts, this will also delete the geocities.com folder once it is empty.
# The contents of geocities.com that could not be merged are now considered conflicting folders and files.
mkdir -p $GEO_WORK/geocities_conflicts_1/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl geocities.com $GEO_WORK/geocities_conflicts_1/www.geocities.com

# One this has run you will need to do modify the above to do the same to JCN, Latecomer, Santiago (and unmangled-SpindleyQ?)
# Get everything that isn't the main archive (above) into a single www.geocities.com folder then merge it into the main archive.
# See 005a-more-merging.
