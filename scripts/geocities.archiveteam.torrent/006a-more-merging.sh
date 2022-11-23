#!/bin/bash

# STEP THROUGH MANUALLY. Still WIP.

# Consolidate JCN, Santiago, Latecomer and SpindleyQ into a single www.geocities.com folder.
# This will then be merged with www.geocities.com from script 005-merge-geocities-www-geocities.sh
# Regions are required at this stage.
# Duplicates or conflicting data NEED TO BE PRESERVED FOR DB.

################################################################ CONFLICTS NEED TO BE SAVED FOR DATABASE ##############################################################################

# First consolidate each post-MAIN release to have a www.geocities.com each.
# Example, Latecomer has four separate www.geocities.com folders.
# /media/ubuntu/GC_2TB/work/Latecomer/gc/cpdl
# /media/ubuntu/GC_2TB/work/Latecomer/gc/geocities
# /media/ubuntu/GC_2TB/work/Latecomer/gc/glw
# /media/ubuntu/GC_2TB/work/Latecomer/gc/more
# Merge them straight into the MAIN www.geocities.com folder.
# Save the conflicts to the Latecomer1 folder.
# Regions can actually be merged into main via the same command!

# UPDATE:
# Screw it, just merge everything direct into www.geocities.com and regional folders.
# Regional folders will be merged into one jumbo www.geocities.com folder in the next script.


# CHECK ALL $GEO_WORK/geocities/ folders below exist on the decompressed, otherwise mkdir -p them


#############################
# START          Purge CRLF #
#############################

# Purge directories and files with CRLF (%0D%0A) to prevent $GEO_SCRIPTS/merge_directories.pl aborting.

cd $GEO_WORK

find . -name '*'$'\r\n*' -exec rm -rf '{}' \;
find . -name '*'$'\n*' -exec rm -rf '{}' \;
find . -name '*'$'\r*' -exec rm -rf '{}' \;

# How are these now the same as the above?
#find . -name '*'$'\r\n*' -exec rm -rf '{}' \;
#find . -name '*'$'\n*' -exec rm -rf '{}' \;
#find . -name '*'$'\r*' -exec rm -rf '{}' \;

#############################
# END            Purge CRLF #
#############################



#############################
# START       Image tidy up #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/main3/pic.geocities.com

# Merge all the pic.geocities.com data into MAIN folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Save all conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/conflicts/main3/pic.geocities.com

# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com

#############################
# END         Image tidy up #
#############################



#############################
# START unmangled-SpindleyQ #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/unmangled-SpindleyQ/geocities.com
mkdir -p $GEO_WORK/conflicts/unmangled-SpindleyQ/www.geocities.com
mkdir -p $GEO_WORK/conflicts/unmangled-SpindleyQ/ar.geocities.com
mkdir -p $GEO_WORK/conflicts/unmangled-SpindleyQ/br.geocities.com
mkdir -p $GEO_WORK/conflicts/unmangled-SpindleyQ/ca.geocities.com

# Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com $GEO_WORK/geocities/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com

# Move the duplicate data (conflicting) to the conflicts folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/geocities.com $GEO_WORK/conflicts/unmangled-SpindleyQ/geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/www.geocities.com $GEO_WORK/conflicts/unmangled-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com $GEO_WORK/conflicts/unmangled-SpindleyQ/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/br.geocities.com $GEO_WORK/conflicts/unmangled-SpindleyQ/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com $GEO_WORK/conflicts/unmangled-SpindleyQ/ca.geocities.com

# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/unmangled-SpindleyQ

#############################
# END   unmangled-SpindleyQ #
#############################



#############################
# START   mirrors-SpindleyQ #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/mirrors-SpindleyQ/geocities.com
mkdir -p $GEO_WORK/conflicts/mirrors-SpindleyQ/www.geocities.com
mkdir -p $GEO_WORK/conflicts/mirrors-SpindleyQ/ar.geocities.com
mkdir -p $GEO_WORK/conflicts/mirrors-SpindleyQ/br.geocities.com

# Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/ar.geocities.com $GEO_WORK/geocities/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/br.geocities.com $GEO_WORK/geocities/br.geocities.com

# Move the duplicate data (conflicting) to the conflicts folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/geocities.com $GEO_WORK/conflicts/mirrors-SpindleyQ/geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/www.geocities.com $GEO_WORK/conflicts/mirrors-SpindleyQ/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/ar.geocities.com $GEO_WORK/conflicts/mirrors-SpindleyQ/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/mirrors-SpindleyQ/br.geocities.com $GEO_WORK/conflicts/mirrors-SpindleyQ/br.geocities.com

# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/mirrors-SpindleyQ

#############################
# END     mirrors-SpindleyQ #
#############################



#############################
# START            Santiago #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/www.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/ar.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/au.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/ca.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/mx.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/us.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-catchup/pic.geocities.com

mkdir -p $GEO_WORK/conflicts/Santiago-nightmare/www.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-nightmare/uk.geocities.com
mkdir -p $GEO_WORK/conflicts/Santiago-nightmare/pic.geocities.com

# Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/geocities/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Confirm no "geocities.com" folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Move the duplicate data (conflicting) to the conflicts folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.com $GEO_WORK/conflicts/Santiago-catchup/geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com $GEO_WORK/conflicts/Santiago-catchup/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/conflicts/Santiago-catchup/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/conflicts/Santiago-catchup/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/conflicts/Santiago-catchup/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/conflicts/Santiago-catchup/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/conflicts/Santiago-catchup/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/pic.geocities.com $GEO_WORK/conflicts/Santiago-catchup/pic.geocities.com

# Confirm no "geocities.com" folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/pic.geocities.com

# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/Santiago


#############################
# END              Santiago #
#############################



#############################
# START                 JCN #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/JCN/www.geocities.com
mkdir -p $GEO_WORK/conflicts/JCN/pic.geocities.com

# Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Move the duplicate data (conflicting) to the conflicts folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/conflicts/JCN/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/conflicts/JCN/pic.geocities.com

# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/JCN


#############################
# END                   JCN #
#############################








############################# UNSORTED JUNK BELOW #############################


#############################
# START           Latecomer #
#############################

cd $GEO_WORK

# Make conflicts directory
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities
mkdir -p $GEO_WORK/conflicts/Latecomer-glw
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl
mkdir -p $GEO_WORK/conflicts/Latecomer-more

### DO THE TARGET DIRECTORIES ALL EXIST IN 
# $GEO_WORK/geocities/us.share.geocities.com?
# $GEO_WORK/geocities/us.share.geocities.com? (Mentioned twice)


# # Latecomer "geocities" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/geocities/www.geocities.com

# Does www.geocities.com folder exist?
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/geocities/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/geocities/us.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com


# Latecomer "glw" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/geocities/www.geocities.com

# Does www.geocities.com folder exist?
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com


# Latecomer "cpdl" - Merge regionals into www.geocities.com

# Does www.geocities.com folder exist? Or geocities.com???
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/geocities.com $GEO_WORK/geocities/www.geocities.com

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/geocities/us.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/geocities/visit.geocities.com


# Latecomer "more" - Merge regionals into www.geocities.com

# Any geocities.com folder? Any regionals?
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/more/www.geocities.com $GEO_WORK/geocities/www.geocities.com



# Save the conflicts...
# HERE 
# HERE 
# HERE 

############################# END UNSORTED JUNK #############################


# Delete the source directory (Check it is empty first)
# rm -rv $GEO_WORK/Latecomer

#############################
# END             Latecomer #
#############################
