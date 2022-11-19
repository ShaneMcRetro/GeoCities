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

# Merge all the pic.geocities.com data into MAIN folder
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

# Combine the SpindleyQs
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
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/www.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/www.geocities.com $GEO_WORK/Santiago/www.geocities.com

# Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ar.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/au.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/ca.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/mx.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/2012-06-geocities-catchup/us.geocities.com $GEO_WORK/Santiago/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare/uk.geocities.com $GEO_WORK/Santiago/www.geocities.com

# Clean up
rm -rv $GEO_WORK/Santiago/2012-06-geocities-catchup
rm -rv $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare

#############################
# END              Santiago #
#############################



#############################
# START           Latecomer #
#############################

mkdir -p $GEO_WORK/Latecomer/www.geocities.com
mkdir -p $GEO_WORK/Latecomer/visit.geocities.com

# Purge directories and files with CRLF (%0D%0A) to prevent $GEO_SCRIPTS/merge_directories.pl aborting.
cd $GEO_WORK/Latecomer
find . -name '*'$'\r\n*' -exec rm -rf '{}' \;
find . -name '*'$'\n*' -exec rm -rf '{}' \;
find . -name '*'$'\r*' -exec rm -rf '{}' \;

# Back to work
cd $GEO_WORK

# Merge geocities.com into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/geocities.com $GEO_WORK/Latecomer/www.geocities.com

# # Latecomer "geocities" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com $GEO_WORK/Latecomer/www.geocities.com

# Latecomer "glw" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/mx.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/glw/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com

# Latecomer "cpdl" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/au.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/br.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/ca.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/de.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/es.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/mx.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/uk.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/us.share.geocities.com $GEO_WORK/Latecomer/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com $GEO_WORK/Latecomer/visit.geocities.com

# Latecomer "more" - Merge regionals into www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/gc/more/www.geocities.com $GEO_WORK/Latecomer/www.geocities.com

# Clean up
rm -rv $GEO_WORK/Latecomer/gc/geocities/geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/au.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/br.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/ca.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/cf.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/de.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/es.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/uk.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/us.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/geocities/us.share.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/glw/geocities.com
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
rm -rv $GEO_WORK/Latecomer/gc/cpdl/visit.geocities.com
rm -rv $GEO_WORK/Latecomer/gc/more/www.geocities.com

#############################
# END             Latecomer #
#############################


#############################
# START                 JCN #
#############################

# Remove non-GeoCities data
rm -rv $GEO_WORK/JCN/albislami.net
rm -rv $GEO_WORK/JCN/bahai-invitation.com
rm -rv $GEO_WORK/JCN/chatangel1.com
rm -rv $GEO_WORK/JCN/chozenfaith.com
rm -rv $GEO_WORK/JCN/eddieting.com
rm -rv $GEO_WORK/JCN/geocities.yahoo.com
rm -rv $GEO_WORK/JCN/harrysharma.com
rm -rv $GEO_WORK/JCN/islaamnet.com
rm -rv $GEO_WORK/JCN/mythicmorgans.net
rm -rv $GEO_WORK/JCN/philadelphiacityhallwillpennshomepage.org
rm -rv $GEO_WORK/JCN/pushti-marg.net
rm -rv $GEO_WORK/JCN/samaroshihtzu.com
rm -rv $GEO_WORK/JCN/www.alefnet.biz
rm -rv $GEO_WORK/JCN/www.ancient-hebrew.org
rm -rv $GEO_WORK/JCN/www.appiusforum.com
rm -rv $GEO_WORK/JCN/www.manmadequilts.com
rm -rv $GEO_WORK/JCN/www.nchoney.net
rm -rv $GEO_WORK/JCN/www.netbiblestudy.net
rm -rv $GEO_WORK/JCN/www.sagada-igorot.com
rm -rv $GEO_WORK/JCN/www.texashotsauce.org
rm -rv $GEO_WORK/JCN/www.thebonejangler.com
rm -rv $GEO_WORK/JCN/geocities.jcn-grab.tar.bz2

#############################
# END                   JCN #
#############################



#############################
# START     Merge with Main #
#############################

# Check main for any CRLFs...
#cd $GEO_WORK
#find . -name '*'$'\r\n*' -exec rm -rf '{}' \;
#find . -name '*'$'\n*' -exec rm -rf '{}' \;
#find . -name '*'$'\r*' -exec rm -rf '{}' \;

# Merge with MAIN at $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/SpindleyQ/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Santiago/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/Latecomer/www.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/JCN/www.geocities.com $GEO_WORK/geocities/www.geocities.com

#############################
# END       Merge with Main #
#############################
