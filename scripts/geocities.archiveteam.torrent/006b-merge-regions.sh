#!/bin/bash

# This script works on collapsing all regions into the www.geocities.com MAIN directory.
# This will merge all the regions ar, au, br, etc., into the www.geocities.com directory.


# Remove directories containing junk or bad data.

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
rm -rv $GEO_WORK/geocities/uk.geocities.yahoo.com
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
rm -rv $GEO_WORK/geocities/visit.geocities.yahoo.com
rm -rv $GEO_WORK/geocities/weather.yahoo.com
rm -rv $GEO_WORK/geocities/www.yahoo.com
rm -rv $GEO_WORK/geocities/yahoopagebuilderhelp.com



# Make conflict directories.

mkdir -p $GEO_WORK/geocities_conflicts_15/ar.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/ar.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/asia.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/asia.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/au.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/au.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/br.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/br.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/ca.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/ca.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/cf.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/de.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/es.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/espanol.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/hk.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/hk.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/in.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/it.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/kr.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/mx.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/sg.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/uk.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/uk.share.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/us.geocities.com
mkdir -p $GEO_WORK/geocities_conflicts_15/us.share.geocities.com



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

$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.geocities.com $GEO_WORK/geocities_conflicts_15/ar.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.share.geocities.com $GEO_WORK/geocities_conflicts_15/ar.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.geocities.com $GEO_WORK/geocities_conflicts_15/asia.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.share.geocities.com $GEO_WORK/geocities_conflicts_15/asia.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.geocities.com $GEO_WORK/geocities_conflicts_15/au.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.share.geocities.com $GEO_WORK/geocities_conflicts_15/au.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.geocities.com $GEO_WORK/geocities_conflicts_15/br.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.share.geocities.com $GEO_WORK/geocities_conflicts_15/br.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.geocities.com $GEO_WORK/geocities_conflicts_15/ca.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.share.geocities.com $GEO_WORK/geocities_conflicts_15/ca.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/cf.geocities.com $GEO_WORK/geocities_conflicts_15/cf.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/de.geocities.com $GEO_WORK/geocities_conflicts_15/de.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/es.geocities.com $GEO_WORK/geocities_conflicts_15/es.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/espanol.geocities.com $GEO_WORK/geocities_conflicts_15/espanol.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.geocities.com $GEO_WORK/geocities_conflicts_15/hk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.share.geocities.com $GEO_WORK/geocities_conflicts_15/hk.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/in.geocities.com $GEO_WORK/geocities_conflicts_15/in.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/it.geocities.com $GEO_WORK/geocities_conflicts_15/it.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/kr.geocities.com $GEO_WORK/geocities_conflicts_15/kr.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/mx.geocities.com $GEO_WORK/geocities_conflicts_15/mx.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/sg.geocities.com $GEO_WORK/geocities_conflicts_15/sg.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/share.geocities.com $GEO_WORK/geocities_conflicts_15/share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.geocities.com $GEO_WORK/geocities_conflicts_15/uk.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.share.geocities.com $GEO_WORK/geocities_conflicts_15/uk.share.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.geocities.com $GEO_WORK/geocities_conflicts_15/us.geocities.com
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.share.geocities.com $GEO_WORK/geocities_conflicts_15/us.share.geocities.com


# These are not to be merged.
# Check these contain useful data.
# Keep or delete.
#
# $GEO_WORK/geocities/www.geocities.com      # MAIN www.geocities.com
# $GEO_WORK/geocities/visit.geocities.com    # counter.gif - All zeroes
# $GEO_WORK/geocities/geocities.yahoo.com    # Content Violation Reporting Form inside
# $GEO_WORK/geocities/help.yahoo.com         # Misc.
# $GEO_WORK/geocities/info.yahoo.com         # Misc.
# $GEO_WORK/geocities/login.yahoo.com        # Login page
# $GEO_WORK/geocities/pic.geocities.com      # Pictures and clipart
# $GEO_WORK/geocities/us.geocities.yahoo.com # PageWizard? (Pagebuilder?)

# Clean up any left over empty folders.
echo Removing empty directories, nearly done.
cd $GEO_WORK
find . -empty -type d -delete


# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  904G  966G   49%   /media/ubuntu/GC_2TB        # aka $GEO_WORK

# Conflict folders 1-15 (a few numbers missing) should have:
# 24,666 items, totalling 291.1 MB

# Ubuntu 12.04
# real   67m35.029s
# user   10m36.313s
# sys    55m37.222s


