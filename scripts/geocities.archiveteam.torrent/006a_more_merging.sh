#!/bin/bash

# STEP THROUGH MANUALLY. Still WIP.
# STEP THROUGH MANUALLY. Still WIP.
# STEP THROUGH MANUALLY. Still WIP.
# STEP THROUGH MANUALLY. Still WIP.
# STEP THROUGH MANUALLY. Still WIP.

# Consolidate JCN, Santiago, Latecomer and SpindleyQ into a single www.geocities.com folder.
# This will then be merged with www.geocities.com from script 005-merge-geocities-www-geocities.sh
# Region-free.
# Duplicates or conflicting data are deleted.


cd $GEO_WORK

#############################
# START  Get all the images #
#############################

#########################################################   UP TO HERE   ##################################################################
################################################################# Confirm these all exist!

# Merge all the pic.geocities.com data into one folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com


#############################
# START unmangled-SpindleyQ #
#############################

# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/unmangled-SpindleyQ/www.geocities.com

# Merge regionals into www.geocities.com
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

# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com

# Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/ar.geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/br.geocities.com $GEO_WORK/mirrors-SpindleyQ/www.geocities.com

# Clean up
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

#############################
# START            Santiago #
#############################

mkdir -p $GEO_WORK/Santiago/www.geocities.com

# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/Santiago/www.geocities.com

# Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/Santiago/www.geocities.com


################## Check these to see if anything interesting, if not delete. Will need to be formatted as above if kept.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.yahoo.com $GEO_WORK/geocities/geocities.yahoo.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/login.yahoo.com $GEO_WORK/geocities/login.yahoo.com
# Japanese?
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/visit.geocities.jp $GEO_WORK/geocities/visit.geocities.jp
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.co.jp $GEO_WORK/geocities/www.geocities.co.jp
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.jp $GEO_WORK/geocities/www.geocities.jp


# Clean up
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com
rm -rv $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com


#############################
# END              Santiago #
#############################



#############################
# START           Latecomer #
#############################

mkdir -p $GEO_WORK/Latecomer/www.geocities.com

# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/Latecomer/www.geocities.com

# Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/Latecomer/www.geocities.com

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com



# We still need to remove the return carriages from cpdl Latecomer!!
#    $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com
#    $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com
# We still need to remove the return carriages from cpdl Latecomer!!

# Latecomer cpdl - BROKEN (Regional)
## CONFIRM THIS HAS NO www.geocities.com or geocities.com!!!!!!!!!!!!!!
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/Latecomer/www.geocities.com

################## Check these to see if anything interesting, if not delete. Will need to be formatted as above if kept.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/geocities/visit.geocities.com



# Clean up
rm -rv $GEO_WORK/Latecomer/gc/geocities/geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/au.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/br.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/de.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/es.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/us.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/au.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/br.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/ca.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/de.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/es.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/mx.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/uk.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/us.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/geocities/visit.geocities.com

#############################
# END             Latecomer #
#############################


# WHERE IS JCN????????? WHERE IS JCN????????? WHERE IS JCN????????? WHERE IS JCN????????? WHERE IS JCN????????? WHERE IS JCN????????? WHERE IS JCN?????????


####################################################################### DONE? ####################################################################################


# 1. Merge all the www.geocities.com folders together one by one, duplicates (conflicts) are deleted at the end.
# 2. Then we will merge with MAIN.

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/SpindleyQ/www.geocities.com $GEO_WORK/?????????????????????????????????????
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/www.geocities.com $GEO_WORK/?????????????????????????????????????
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/www.geocities.com $GEO_WORK/?????????????????????????????????????

