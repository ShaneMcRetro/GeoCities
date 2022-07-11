#!/bin/bash

# Make sure these folders exist as I *might* have renamed them when extracting...
# This will result in mostly empty JCN, Santiago, SpindleyQ and Latecomer folders.

# We still need to remove the return carriages from cpdl Latecomer!!
#    $GEO_WORK/Latecomer/gc/cpdl/www.geocities.com
#    $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com
# We still need to remove the return carriages from cpdl Latecomer!!

cd $GEO_WORK

# Start with pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/geocities/pic.geocities.com

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com3
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/pic.geocities.com6

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/pic.geocities.com/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/pic.geocities.com $GEO_WORK/conflicts/geocities_extra/pic.geocities.com6



# Stuff that isn't pic.geocities.com

# SpindleyQ (Regional)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com $GEO_WORK/geocities/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/ar.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/br.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/ca.geocities.com1

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ar.geocities.com $GEO_WORK/conflicts/geocities_extra/ar.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/br.geocities.com $GEO_WORK/conflicts/geocities_extra/br.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/unmangled-SpindleyQ/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/ca.geocities.com1



# Santiago 2012-06-geocities-catchup (Regional)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/geocities/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.yahoo.com $GEO_WORK/geocities/geocities.yahoo.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/login.yahoo.com $GEO_WORK/geocities/login.yahoo.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/geocities/us.geocities.com

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/ar.geocities.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/au.geocities.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/ca.geocities.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/geocities.yahoo.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/login.yahoo.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/mx.geocities.com2
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.geocities.com2

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/conflicts/geocities_extra/ar.geocities.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/conflicts/geocities_extra/au.geocities.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/ca.geocities.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/geocities.yahoo.com $GEO_WORK/conflicts/geocities_extra/geocities.yahoo.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/login.yahoo.com $GEO_WORK/conflicts/geocities_extra/login.yahoo.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/conflicts/geocities_extra/mx.geocities.com2
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/conflicts/geocities_extra/us.geocities.com2



# Santiago archived_geocities_stuff_by_lord_nightmare (Regional)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/visit.geocities.jp $GEO_WORK/geocities/visit.geocities.jp
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.co.jp $GEO_WORK/geocities/www.geocities.co.jp
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.jp $GEO_WORK/geocities/www.geocities.jp

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/uk.geocities.com3
mkdir -p $GEO_WORK/conflicts/geocities_extra/visit.geocities.jp3
mkdir -p $GEO_WORK/conflicts/geocities_extra/www.geocities.co.jp3
mkdir -p $GEO_WORK/conflicts/geocities_extra/www.geocities.jp3

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/conflicts/geocities_extra/uk.geocities.com3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/visit.geocities.jp $GEO_WORK/conflicts/geocities_extra/visit.geocities.jp3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.co.jp $GEO_WORK/conflicts/geocities_extra/www.geocities.co.jp3
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.jp $GEO_WORK/conflicts/geocities_extra/www.geocities.jp3



# Latecomer cpdl (Regional)
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

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/au.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/br.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/ca.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/de.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/es.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/mx.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/uk.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.share.geocities.com4
mkdir -p $GEO_WORK/conflicts/geocities_extra/visit.geocities.com4

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/conflicts/geocities_extra/au.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/conflicts/geocities_extra/br.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/ca.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/conflicts/geocities_extra/de.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/conflicts/geocities_extra/es.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/conflicts/geocities_extra/mx.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/conflicts/geocities_extra/uk.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/conflicts/geocities_extra/us.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/conflicts/geocities_extra/us.share.geocities.com4
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/conflicts/geocities_extra/visit.geocities.com4



# Latecomer geocities (Regional)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/geocities/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/geocities/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/geocities/us.share.geocities.com

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/au.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/br.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/ca.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/cf.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/de.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/es.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/uk.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.geocities.com5
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.share.geocities.com5

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/conflicts/geocities_extra/au.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/conflicts/geocities_extra/br.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/ca.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/conflicts/geocities_extra/cf.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/conflicts/geocities_extra/de.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/conflicts/geocities_extra/es.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/conflicts/geocities_extra/uk.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/conflicts/geocities_extraus.geocities.com5
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/conflicts/geocities_extra/us.share.geocities.com5



# Latecomer glw (Regional)
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/geocities/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/geocities/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/geocities/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/geocities/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/geocities/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/geocities/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/geocities/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/geocities/us.geocities.com

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/au.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/br.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/ca.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/de.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/es.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/mx.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/uk.geocities.com6
mkdir -p $GEO_WORK/conflicts/geocities_extra/us.geocities.com6

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/conflicts/geocities_extra/au.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/conflicts/geocities_extra/br.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/ca.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/conflicts/geocities_extra/de.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/conflicts/geocities_extra/es.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/conflicts/geocities_extra/mx.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/conflicts/geocities_extra/uk.geocities.com6
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/conflicts/geocities_extra/us.geocities.com6


# Now what do we do with all the regions? Merge them into the www.geocities.com folder?
