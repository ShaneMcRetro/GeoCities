#!/bin/bash
# Make sure these folders exist as I *might* have renamed them when extracting...
# This will merge all the regions ar, au, br, es, mx, us, etc, etc into the www.geocities.com folder.
# This might be done at a later step but I haven't checked that far ahead yet...


# Cleanup empty folders (conflicts mostly)
cd $GEO_WORK
find . -maxdepth 3 -empty -type d -delete



# Remove folders containing junk or bad data
rm -rf $GEO_WORK/JCN
rm -rf $GEO_WORK/Latecomer
rm -rf $GEO_WORK/geocities/ar.geocities.yahoo.com
rm -rf $GEO_WORK/geocities/ar.yahoo.com
rm -rf $GEO_WORK/geocities/br.noticias.yahoo.com
rm -rf $GEO_WORK/geocities/br.yahoo.com
rm -rf $GEO_WORK/geocities/chat.yahoo.com
rm -rf $GEO_WORK/geocities/dir.yahoo.com
rm -rf $GEO_WORK/geocities/docs.yahoo.com
rm -rf $GEO_WORK/geocities/features.yahoo.com
rm -rf $GEO_WORK/geocities/finance.yahoo.com
rm -rf $GEO_WORK/geocities/financevision.yahoo.com
rm -rf $GEO_WORK/geocities/games.yahoo.com
rm -rf $GEO_WORK/geocities/gargantuageocities.com
rm -rf $GEO_WORK/geocities/geo.yahoo.com
rm -rf $GEO_WORK/geocities/geocities.yahoo.co.jp
rm -rf $GEO_WORK/geocities/geocities4ever.com
rm -rf $GEO_WORK/geocities/green.yahoo.com
rm -rf $GEO_WORK/geocities/mx.geocities.yahoo.com
rm -rf $GEO_WORK/geocities/mx.yahoo.com
rm -rf $GEO_WORK/geocities/news.yahoo.com
rm -rf $GEO_WORK/geocities/p1.geo.sp2.yahoo.com
rm -rf $GEO_WORK/geocities/p2.geo.sp2.yahoo.com
rm -rf $GEO_WORK/geocities/p3.geo.sp2.yahoo.com
rm -rf $GEO_WORK/geocities/pages.yahoo.com
rm -rf $GEO_WORK/geocities/picks.yahoo.com
rm -rf $GEO_WORK/geocities/rivals.yahoo.com
rm -rf $GEO_WORK/geocities/search.yahoo.com
rm -rf $GEO_WORK/geocities/shopping.yahoo.com
rm -rf $GEO_WORK/geocities/smallbusiness.yahoo.com
rm -rf $GEO_WORK/geocities/sports.yahoo.com
rm -rf $GEO_WORK/geocities/themis.geocities.yahoo.com
rm -rf $GEO_WORK/geocities/tournament.fantasysports.yahoo.com
rm -rf $GEO_WORK/geocities/travel.yahoo.com
rm -rf $GEO_WORK/geocities/tv.yahoo.com
rm -rf $GEO_WORK/geocities/uk.geocities.yahoo.com
rm -rf $GEO_WORK/geocities/us.1.p.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p2.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p3.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p4.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p5.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p7.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p8.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p9.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p10.geocities.com
rm -rf $GEO_WORK/geocities/us.1.p12.geocities.com
rm -rf $GEO_WORK/geocities/us.2.p2.geocities.com
rm -rf $GEO_WORK/geocities/geocities.visit.yahoo.com
rm -rf $GEO_WORK/geocities/weather.yahoo.com
rm -rf $GEO_WORK/geocities/www.yahoo.com
rm -rf $GEO_WORK/geocities/yahoopagebuilderhelp.com



# Mash them all together...

# All 26 items straight into the www.geocities.com folder.
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

# Make the conflicts a home
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/ar.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/ar.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/asia.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/asia.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/au.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/au.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/br.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/br.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/ca.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/ca.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/cf.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/de.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/es.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/espanol.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/hk.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/hk.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/in.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/it.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/kr.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/mx.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/sg.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/uk.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/uk.share.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/us.geocities.com1
mkdir -p $GEO_WORK/conflicts/geocities_extra/regional/us.share.geocities.com1

# And save conflicting data
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/ar.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ar.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/ar.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/asia.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/asia.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/asia.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/au.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/au.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/au.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/br.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/br.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/br.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/ca.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/ca.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/ca.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/cf.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/cf.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/de.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/de.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/es.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/es.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/espanol.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/espanol.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/hk.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/hk.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/hk.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/in.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/in.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/it.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/it.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/kr.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/kr.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/mx.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/mx.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/sg.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/sg.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/uk.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/uk.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/uk.share.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/us.geocities.com1
$GEO_SCRIPTS/merge_directories.pl $GEO_WORK/geocities/us.share.geocities.com $GEO_WORK/conflicts/geocities_extra/regional/us.share.geocities.com1



# Then cleanup any empty folders again (conflicts)
cd $GEO_WORK/conflicts/geocities_extra/
find . -maxdepth 3 -empty -type d -delete
cd $GEO_WORK/
