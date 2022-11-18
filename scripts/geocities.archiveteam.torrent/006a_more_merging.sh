#!/bin/bash

# This script focuses on getting all the "www.geocities.com" data that it can.


# Make sure these folders exist as I *might* have renamed them when extracting...
# STEP THROUGH MANUALLY, we are not deleting data yet.
# Where is unmangled spindleyQ???? Needs to be decompressed in 002-untar from source



cd $GEO_WORK

# START unmangled-SpindleyQ
# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com

# Save conflicts (Data that wasn't moved or deleted are kept safe for later)
mkdir -p $GEO_WORK/spindleyq1/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/spindleyq1/www.geocities.com

# How do you escape a bracket in perl? Ehhhh maybe just rename the folder.
mv $GEO_WORK/unmangled-SpindleyQ/www.geocities.com\(2\) $GEO_WORK/unmangled-SpindleyQ/www.geocities.com2

# Merge www.geocities.com(2) into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com2 $GEO_WORK/unmangled-SpindleyQ/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/spindleyq2/www.geocities.com

# Merge this other GeoCities folder that was kicking around.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com2 $GEO_WORK/spindleyq2/www.geocities.com



# START Santiago
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/santiago1/www.geocities.com

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/santiago1/www.geocities.com



# START Latecomer
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/Latecomer/gc/geocities/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/latecomer_main/www.geocities.com

# Save conflicts (none)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/latecomer_main/www.geocities.com

# Three sources for latecomer, only two have a geocities.com folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/Latecomer/gc/glw/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/latecomer_glw/www.geocities.com

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/latecomer_glw/www.geocities.com










# That means we can merge all the www.geocities.com folders together one by one putting conflicting files aside.
# Let's make a folder to store all the mergeable folders/files
mkdir -p $GEO_WORK/conflicts


# unmangled-SpindleyQ
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com1

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com $GEO_WORK/conflicts/www.geocities.com1



# Santiago - Part 1 of 2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com2

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com $GEO_WORK/conflicts/www.geocities.com2



# Santiago - Part 2 of 2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com3

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/conflicts/www.geocities.com3


# Latecomer cpdl - Part 1 of 3 - Note: THIS IS BROKEN-ish. There are http: with return carriages as folders... that can't be good.
# It looks like the perl script skips them though and copies the bulk that can be copied.
# Expect a few errors from sha1sum reporting this is a directory.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com4

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com $GEO_WORK/conflicts/www.geocities.com4



# Latecomer geocities - Part 2 of 3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com5

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/www.geocities.com $GEO_WORK/conflicts/www.geocities.com5


# CHECK THIS PATH, should it be $GEO_WORK/latecomer_glw/www.geocities.com?????????
# CHECK THIS PATH, should it be $GEO_WORK/latecomer_glw/www.geocities.com?????????
# CHECK THIS PATH, should it be $GEO_WORK/latecomer_glw/www.geocities.com?????????

# Latecomer glw - Part 3 of 3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com6

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/www.geocities.com $GEO_WORK/conflicts/www.geocities.com6



# JCN
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/conflicts

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/www.geocities.com7

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/conflicts/www.geocities.com7
