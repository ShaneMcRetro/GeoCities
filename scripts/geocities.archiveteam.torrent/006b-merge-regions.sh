#!/bin/bash

# This script works on collapsing all regions into the www.geocities.com MAIN directory.
# This will merge all the regions ar, au, br, etc., into the www.geocities.com directory.



# Remove directories containing junk or bad data.
# CONFIRM THESE ARE EMPTY/JUNK FIRST!!!

rm -rv $GEO_WORK/geocities/ar.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/ar.yahoo.com
rm -rv $GEO_WORK/geocities/br.noticias.yahoo.com
rm -rv $GEO_WORK/geocities/br.yahoo.com
rm -rv $GEO_WORK/geocities/chat.yahoo.com
rm -rv $GEO_WORK/geocities/dir.yahoo.com
rm -rv $GEO_WORK/geocities/docs.yahoo.com
rm -rv $GEO_WORK/geocities/features.yahoo.com
rm -rv $GEO_WORK/geocities/finance.yahoo.com
rm -rv $GEO_WORK/geocities/financevision.yahoo.com
rm -rv $GEO_WORK/geocities/games.yahoo.com
rm -rv $GEO_WORK/geocities/gargantuageocities.com
rm -rv $GEO_WORK/geocities/geo.yahoo.com
rm -rv $GEO_WORK/geocities/geocities.yahoo.co.jp
rm -rv $GEO_WORK/geocities/geocities4ever.com
rm -rv $GEO_WORK/geocities/green.yahoo.com
rm -rv $GEO_WORK/geocities/mx.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/mx.yahoo.com
rm -rv $GEO_WORK/geocities/news.yahoo.com
rm -rv $GEO_WORK/geocities/p1.geo.sp2.yahoo.com
rm -rv $GEO_WORK/geocities/p2.geo.sp2.yahoo.com
rm -rv $GEO_WORK/geocities/p3.geo.sp2.yahoo.com
rm -rv $GEO_WORK/geocities/pages.yahoo.com
rm -rv $GEO_WORK/geocities/picks.yahoo.com
rm -rv $GEO_WORK/geocities/rivals.yahoo.com
rm -rv $GEO_WORK/geocities/search.yahoo.com
rm -rv $GEO_WORK/geocities/shopping.yahoo.com
rm -rv $GEO_WORK/geocities/smallbusiness.yahoo.com
rm -rv $GEO_WORK/geocities/sports.yahoo.com
rm -rv $GEO_WORK/geocities/themis.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/tournament.fantasysports.yahoo.com
rm -rv $GEO_WORK/geocities/travel.yahoo.com
rm -rv $GEO_WORK/geocities/tv.yahoo.com
rm -rv $GEO_WORK/geocities/us.geocities.yahoo.com # CHECK THIS ONE ESPECIALLY
rm -rv $GEO_WORK/geocities/us.1.p.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p2.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p3.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p4.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p5.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p7.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p8.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p9.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p10.geocities.com
rm -rv $GEO_WORK/geocities/us.1.p12.geocities.com
rm -rv $GEO_WORK/geocities/us.2.p2.geocities.com
rm -rv $GEO_WORK/geocities/uk.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/visit.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/weather.yahoo.com
rm -rv $GEO_WORK/geocities/www.yahoo.com
rm -rv $GEO_WORK/geocities/yahoopagebuilderhelp.com



# Make conflict directories.

mkdir -p $GEO_WORK/conflicts/main3/ar.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/ar.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/asia.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/asia.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/au.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/au.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/br.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/br.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/ca.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/ca.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/cf.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/de.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/es.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/espanol.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/hk.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/hk.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/in.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/it.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/kr.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/mx.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/sg.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/uk.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/uk.share.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/us.geocities.com
mkdir -p $GEO_WORK/conflicts/main3/us.share.geocities.com



# Merge all regional directories into the www.geocities.com MAIN directory.
# Only non-existing data will be copied.

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/cf.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/de.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/es.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/espanol.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/in.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/it.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/kr.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/mx.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/sg.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.share.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.geocities.com $GEO_WORK/geocities/www.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.share.geocities.com $GEO_WORK/geocities/www.geocities.com



# Move the duplicate data (conflicting) to the conflicts folder.
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.geocities.com $GEO_WORK/conflicts/main3/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.share.geocities.com $GEO_WORK/conflicts/main3/ar.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.geocities.com $GEO_WORK/conflicts/main3/asia.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.share.geocities.com $GEO_WORK/conflicts/main3/asia.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.geocities.com $GEO_WORK/conflicts/main3/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.share.geocities.com $GEO_WORK/conflicts/main3/au.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.geocities.com $GEO_WORK/conflicts/main3/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.share.geocities.com $GEO_WORK/conflicts/main3/br.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.geocities.com $GEO_WORK/conflicts/main3/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.share.geocities.com $GEO_WORK/conflicts/main3/ca.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/cf.geocities.com $GEO_WORK/conflicts/main3/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/de.geocities.com $GEO_WORK/conflicts/main3/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/es.geocities.com $GEO_WORK/conflicts/main3/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/espanol.geocities.com $GEO_WORK/conflicts/main3/espanol.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.geocities.com $GEO_WORK/conflicts/main3/hk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.share.geocities.com $GEO_WORK/conflicts/main3/hk.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/in.geocities.com $GEO_WORK/conflicts/main3/in.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/it.geocities.com $GEO_WORK/conflicts/main3/it.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/kr.geocities.com $GEO_WORK/conflicts/main3/kr.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/mx.geocities.com $GEO_WORK/conflicts/main3/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/sg.geocities.com $GEO_WORK/conflicts/main3/sg.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/share.geocities.com $GEO_WORK/conflicts/main3/share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.geocities.com $GEO_WORK/conflicts/main3/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.share.geocities.com $GEO_WORK/conflicts/main3/uk.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.geocities.com $GEO_WORK/conflicts/main3/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.share.geocities.com $GEO_WORK/conflicts/main3/us.share.geocities.com


# These are not to be merged.
# Check these contain useful data.
# Keep or delete.
# $GEO_WORK/geocities/www.geocities.com
# $GEO_WORK/geocities/visit.geocities.com
# $GEO_WORK/geocities/geocities.yahoo.com
# $GEO_WORK/geocities/help.yahoo.com
# $GEO_WORK/geocities/info.yahoo.com
# $GEO_WORK/geocities/login.yahoo.com
# $GEO_WORK/geocities/pic.geocities.com


# Clean up any left over empty folders.
cd $GEO_WORK/conflicts/geocities_extra/
find . -empty -type d -delete
cd $GEO_WORK/

# SIZING GOES HERE
# We should see a drop as duplicates are removed, I believe regional sites overlapped MAIN considerably.
# SIZING GOES HERE

# TIMES GO HERE
# TIMES GO HERE
# TIMES GO HERE

