#!/bin/bash

# Merge JCN, Santiago, Latecomer and SpindleyQ.
# Duplicates/conflicting data need to be preserved for database processing later on.

# This will merge everything direct into www.geocities.com and regional folders.
# These are located at GeoCities MAIN - $GEO_WORK/geocities/
# Regional folders will be merged into MAIN www.geocities.com folder in the next script (006b).


#############################
# START          Purge CRLF #
#############################

# Purge directories and files with CRLF (%0D%0A) to prevent $GEO_SCRIPTS/merge_directories.pl aborting.

cd $GEO_WORK

find . -name '*'$'\r\n*' -exec rm -rv '{}' \;
find . -name '*'$'\n*' -exec rm -rv '{}' \;
find . -name '*'$'\r*' -exec rm -rv '{}' \;

#############################
# END            Purge CRLF #
#############################



#############################
# START       Image tidy up #
#############################

cd $GEO_WORK

# Make conflict directories
mkdir -p $GEO_WORK/conflicts/main3/pic.geocities.com

# Merge all the pic.geocities.com data into MAIN folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Save all conflicts
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/conflicts/main3/pic.geocities.com

# Delete the source directory (Check it is empty first)
rm -rv $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com

#############################
# END         Image tidy up #
#############################



#############################
# START unmangled-SpindleyQ #
#############################

cd $GEO_WORK

# Make conflict directories
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
rm -rv $GEO_WORK/unmangled-SpindleyQ


#############################
# END   unmangled-SpindleyQ #
#############################



#############################
# START   mirrors-SpindleyQ #
#############################

cd $GEO_WORK

# Make conflict directories
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
rm -rv $GEO_WORK/mirrors-SpindleyQ


#############################
# END     mirrors-SpindleyQ #
#############################



#############################
# START            Santiago #
#############################

cd $GEO_WORK

# Make conflict directories
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

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/conflicts/Santiago-nightmare/pic.geocities.com

# Delete the source directory (Check it is empty first)
rm -rv $GEO_WORK/Santiago


#############################
# END              Santiago #
#############################



#############################
# START                 JCN #
#############################

cd $GEO_WORK

# Make conflict directories
mkdir -p $GEO_WORK/conflicts/JCN/www.geocities.com
mkdir -p $GEO_WORK/conflicts/JCN/pic.geocities.com

# Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Move the duplicate data (conflicting) to the conflicts folder
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/conflicts/JCN/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/conflicts/JCN/pic.geocities.com

# Delete the source directory (Check it is empty first)
rm -rv $GEO_WORK/JCN


#############################
# END                   JCN #
#############################



#############################
# START           Latecomer #
#############################

cd $GEO_WORK

# Make conflict directories

# Latecomer "geocities"
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/www.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/au.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/br.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/ca.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/cf.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/de.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/es.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/uk.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/us.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/us.share.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-geocities/pic.geocities.com

# Latecomer "glw"
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/www.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/pic.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/au.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/br.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/ca.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/de.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/es.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/mx.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/uk.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-glw/us.geocities.com

# Latecomer "cpdl"
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/www.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/visit.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/au.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/br.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/ca.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/de.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/es.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/mx.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/uk.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/us.geocities.com
mkdir -p $GEO_WORK/conflicts/Latecomer-cpdl/us.share.geocities.com

# Latecomer "more"
mkdir -p $GEO_WORK/conflicts/Latecomer-more/www.geocities.com


# Latecomer "geocities" - Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/geocities/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/geocities/us.share.geocities.com

# Latecomer "glw" - Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/geocities/us.geocities.com

# Latecomer "cpdl" - Merge geocities.com into www.geocities.com and regionals into geocities MAIN. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/geocities/visit.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/geocities/us.share.geocities.com

# Latecomer "more" -  - Merge www.geocities.com into geocities MAIN. No regional data. Only non-existing data will be copied.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/more/www.geocities.com $GEO_WORK/geocities/www.geocities.com


# Move the duplicate data (conflicting) to the conflicts folder

# Latecomer "geocities"
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/conflicts/Latecomer-geocities/geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/www.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/conflicts/Latecomer-geocities/us.share.geocities.com

# Latecomer "glw"
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/conflicts/Latecomer-glw/geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/www.geocities.com $GEO_WORK/conflicts/Latecomer-glw/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/conflicts/Latecomer-glw/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/conflicts/Latecomer-glw/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/conflicts/Latecomer-glw/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/conflicts/Latecomer-glw/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/conflicts/Latecomer-glw/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/conflicts/Latecomer-glw/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/conflicts/Latecomer-glw/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/conflicts/Latecomer-glw/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/conflicts/Latecomer-glw/us.geocities.com

# Latecomer "cpdl"
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/visit.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/conflicts/Latecomer-cpdl/us.share.geocities.com

# Latecomer "more"
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/more/www.geocities.com $GEO_WORK/conflicts/Latecomer-more/www.geocities.com


# Delete the source directory (Check it is empty first)
rm -rv $GEO_WORK/Latecomer


#############################
# END             Latecomer #
#############################


### DELETE EMPTY FOLDERS ###
# Cleanup empty folders (conflicts mostly)

cd $GEO_WORK
find . -empty -type d -delete


# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  905G  964G   49%   /media/ubuntu/GC_2TB        # aka $GEO_WORK


# real    117m24.237s
# user    63m1.481s
# sys     45m36.684s

