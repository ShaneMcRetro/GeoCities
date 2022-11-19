#!/bin/bash

# This script focuses on getting all the "www.geocities.com" data that it can.

# STEP THROUGH MANUALLY, we are not deleting data yet.
# Big mess below, yay! Still working on it...

# Conflicting data is considered duplicate data at this stage.
# The largest archive is the main set of data.
# These are all additional and will be merged into the core set of data... in time.

cd $GEO_WORK

#############################
# START unmangled-SpindleyQ #
#############################

# Merge all regions and geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/br.geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com

# Clean up (Anything that remains is a duplicate)
rm -rv $GEO_WORK/unmangled-SpindleyQ/geocities.com
rm -rv $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com
rm -rv $GEO_WORK/unmangled-SpindleyQ/br.geocities.com
rm -rv $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com

#############################
# END   unmangled-SpindleyQ #
#############################



#############################
# START   mirrors-SpindleyQ #
#############################

# Merge all regions and geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/ar.geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/br.geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com

# Clean up (Anything that remains is a duplicate)
rm -rv $GEO_WORK/mirrors-SpindleyQ/geocities.com
rm -rv $GEO_WORK/mirrors-SpindleyQ/ar.geocities.com
rm -rv $GEO_WORK/mirrors-SpindleyQ/br.geocities.com

#############################
# END   unmangled-SpindleyQ #
#############################



#############################
# START    Merge SpindleyQs #
#############################

# Combine the SpindleyQs to become one
mkdir -p $GEO_WORK/SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com $GEO_WORK/SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/www.geocities.com $GEO_WORK/SpindleyQ/www.geocities.com

# Clean up
rm -rv $GEO_WORK/unmangled-SpindleyQ/
rm -rv $GEO_WORK/mirrors-SpindleyQ/

#############################
# END      Merge SpindleyQs #
#############################


#########################################################   UP TO HERE   ##################################################################

# START Santiago
# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/conflicts/santiago1/www.geocities.com

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/conflicts/santiago1/www.geocities.com

################################################################################################################################################################

# START Latecomer
# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/Latecomer/gc/geocities/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/latecomer_main/www.geocities.com

# Save conflicts (none)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/latecomer_main/www.geocities.com

# Three sources for latecomer, only two have a geocities.com folder
# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/Latecomer/gc/glw/www.geocities.com

# Make a folder to store conflicts
mkdir -p $GEO_WORK/latecomer_glw/www.geocities.com

# Save conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/latecomer_glw/www.geocities.com


################################################################################################################################################################







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
