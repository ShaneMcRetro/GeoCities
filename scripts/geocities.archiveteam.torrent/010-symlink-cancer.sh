# Hand-picked destruction of symlink cancer, directories nested in themselves.
# Probably caused by symlinks on the GeoCities server. 
# It's turtles all the way down...
# These almost endless loops mess up the filesystem big time.
# It is safe to remove these directories if the data they contain is the same.
#
# These directories have been manually checked for being safe to remove.
# To find them, the SQL query in $GEO_SCRIPTS/sql/do/find-doubles.sql was used.
# This is based on the doubles-dir data generated in 009-case-insensitivity-dirs.sh


rm -rv $GEO_WORK/geocities/www.geocities.com/Tokyo/Temple/2506/pisces/beth/beth

rm -rv $GEO_WORK/geocities/www.geocities.com/Wellesley/Veranda/9569/index/harvest/harvest

rm -rv $GEO_WORK/geocities/www.geocities.com/boostmom/links/links/links

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Shores/9064/links/links/links

rm -rv $GEO_WORK/geocities/www.geocities.com/SunsetStrip/Performance/3412/Bilder/blog.html/radio/radio

rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Club/3318/horses/gallery

rm -rv $GEO_WORK/geocities/www.geocities.com/EnchantedForest/Dell/2237/dino/dino/dino

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Hills/1217/graphics/graphics/framed/framed

rm -rv $GEO_WORK/geocities/www.geocities.com/kinomakoto14/sm/picture/picture

rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/4137/res9899/res9899/res9899

rm -rv $GEO_WORK/geocities/www.geocities.com/Vienna/Studio/5505/PolarBear/PolarBear/PolarBear_files/PolarBear_files

rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Pressbox/9206/nfceast.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Pressbox/9206/nfcnorth/
rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Pressbox/9206/nfcnorth.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Pressbox/9206/nfcwest.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/golf/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/nfceast.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/nfcnorth/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/nfcnorth.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/nfcwest.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/dibears101.geo/tennis/

rm -rv $GEO_WORK/geocities/www.geocities.com/CapeCanaveral/Lab/1911/bh_blog.htm
mv $GEO_WORK/geocities/www.geocities.com/CapeCanaveral/Lab/1911/bh_blog.htm.1 $GEO_WORK/geocities/www.geocities.com/CapeCanaveral/Lab/1911/bh_blog.htm

rm -rv $GEO_WORK/geocities/www.geocities.com/rosella.geo/graphics/graphics/framed/framed/framed

rm -rv $GEO_WORK/geocities/www.geocities.com/Paris/Jardin/7503/itadakimasu/itadakimasu/

rm -rv $GEO_WORK/geocities/www.geocities.com/Colosseum/Bleachers/6545/OldPage/opinion/opinion/

rm -rv $GEO_WORK/geocities/www.geocities.com/WestHollywood/Chelsea/4524/juke/music.html/music.html

rm -rv $GEO_WORK/geocities/www.geocities.com/dburton_1951/PolarBear/PolarBear/PolarBear_files/PolarBear_files

rm -rv $GEO_WORK/geocities/www.geocities.com/kc2awa_grapee/Sayings.html/geobook.html/geobook.html

mv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Park/1219/index.html/sys/index.html $GEO_WORK/geocities/www.geocities.com/SiliconValley/Park/1219/index1.html
rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Park/1219/index.html/
mv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Park/1219/index1.html $GEO_WORK/geocities/www.geocities.com/SiliconValley/Park/1219/index.html

rm -rv $GEO_WORK/work/geocities/www.geocities.com/Tokyo/Club/9256/advertising/
rm -rv $GEO_WORK/work/geocities/www.geocities.com/Tokyo/Club/9256/travel/

rm -rv $GEO_WORK/geocities/www.geocities.com/SiliconValley/Network/7848/Chapter/Ch2/Ch2/

rm -rv $GEO_WORK/geocities/www.geocities.com/Pipeline/4966/islam/islam

rm -rv $GEO_WORK/geocities/www.geocities.com/Yosemite/Rapids/6597/teoria.html/teoria2.html/teoria2.html

rm -rv $GEO_WORK/geocities/www.geocities.com/RainForest/Jungle/5432/links.html/http/www.sca-inc.org/http

rm -rv $GEO_WORK/geocities/www.geocities.com/Yosemite/Meadows/1967/where.html/where.html

rm -rv $GEO_WORK/geocities/www.geocities.com/Paris/Arc/4398/friend.html/cgi_bin/geoplus_apps/cgi_bin

# We've got a hard one for you!
alldirs=(logo karen gif html_tutorials treasure_trove midi gifs site_features sailormars southpark tutorials menu emiri me jpg myself);
for topdir in ${alldirs[@]}; do
    for deepdir in ${alldirs[@]}; do
        rm -rv $GEO_WORK/geocities/www.geocities.com/mitzrah_cl/$topdir/$deepdir;
    done
done

# Older version of the same page in Tokoy
alldirs=(gifs hints_n_tips jpg karen sailormars site_features tutorials www_stuff);
for topdir in ${alldirs[@]}; do
    for deepdir in ${alldirs[@]}; do
        rm -rv $GEO_WORK/geocities/www.geocities.com/Tokyo/6140/myself/$topdir/$deepdir;
    done
done


mv $GEO_WORK/geocities/www.geocities.com/eternal_purpose/tonyzapnet.html/index.html $GEO_WORK/geocities/www.geocities.com/eternal_purpose/tonyzapnet1.html
rm -rv $GEO_WORK/geocities/www.geocities.com/eternal_purpose/tonyzapnet.html/
$GEO_WORK/geocities/www.geocities.com/eternal_purpose/tonyzapnet.html
rm -rv $GEO_WORK/geocities/www.geocities.com/eternal_purpose/_market

rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Hills/1350/dbs/dbs
rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Hills/1350/dbs/emblems/dbs
rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Hills/1350/dbs/emblems/emblems

rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Keep/8907/Klingonregistry/Klingonregistry

rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/1821/index/

rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Stargate/4991/doomtown/co_allies.htm/
rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Stargate/4991/doomtown/co_events.htm/



rm -rv $GEO_WORK/geocities/www.geocities.com/SunsetStrip/Underground/5244/bands/bands

alldirs=(art_cel.html bios_family.html news_main.html pinocchio_story.html prose_poem.html)
for topdir in ${alldirs[@]}; do
    for deepdir in ${alldirs[@]}; do
        rm -rv $GEO_WORK/geocities/www.geocities.com/Paris/Gallery/7842/$topdir/$deepdir;
    done
done

rm -rv $GEO_WORK/geocities/www.geocities.com/Tokyo/Teahouse/4122/geobook.html/snap.to/snap.to

rm -rv $GEO_WORK/geocities/www.geocities.com/Pentagon/Bunker/3087/database/database/

rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Makeup/5254/index/

rm -rv $GEO_WORK/geocities/www.geocities.com/Hollywood/Club/3318/history/

rm -rv $GEO_WORK/geocities/www.geocities.com/Vienna/4761/dougie/

rm -rv $GEO_WORK/geocities/www.geocities.com/HotSprings/Sauna/6585/links/

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Acres/5127/Watkins/

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Ridge/2859/renee/renee/

rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/baking/baking/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/balloon/balloon/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/banjo/banjo/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/gallery/gallery/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/harmonica/harmonica/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/juggling/juggling/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/profile/profile/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/roleplay/roleplay/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/talents/talents/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/videogame/videogame/
rm -rv $GEO_WORK/geocities/www.geocities.com/TimesSquare/Galaxy/7805/yoyo/yoyo/

rm -rv $GEO_WORK/geocities/www.geocities.com/Tokyo/Shrine/3376/Shampoo/Pictures/Pictures

# Biggie
rm -rv $GEO_WORK/geocities/www.geocities.com/SoHo/Workshop/9176/Clown/Clown

# This one was 2.1 GB!
alldirs=(actors authors basarke credits gallery Julie media Newsletters smith szpindel)
for topdir in ${alldirs[@]}; do
    for deepdir in ${alldirs[@]}; do
        rm -rv $GEO_WORK/geocities/www.geocities.com/canadian_sf/pages/authors/media/$topdir/$deepdir;
    done
done

# We need to go deeper!
rm -rv $GEO_WORK/geocities/www.geocities.com/canadian_sf/pages/authors/media
rm -rv $GEO_WORK/geocities/www.geocities.com/canadian_sf/pages/authors/smith
rm -rv $GEO_WORK/geocities/www.geocities.com/canadian_sf/pages/authors/szpindel

# One of these directories that is actually a HTML file...
rm -rv $GEO_WORK/geocities/www.geocities.com/SoHo/7931/midi

# In the conflict directories there's some sickness floating
# around as well! Found by using the 'tree -dfin' command and
# watching the output rush by. :)

rm -rv $GEO_WORK/conflicts/main1/www.geocities.com/Hollywood/Academy/5235/index.html/www.geocities.com

rm -rv $GEO_WORK/geocities_conflicts_1/geocities/www.geocities.com/Hollywood/Hills/7415/Trash/Trivia.html/

rm -rv $GEO_WORK/conflicts/main1/www.geocities.com/Hollywood/Hills/7415/Trash/Trivia.html/

rm -rv $GEO_WORK/geocities/www.geocities.com/fzbwsundern/MH5_Data/

rm -rv $GEO_WORK/geocities/www.geocities.com/SunsetStrip/Palladium/4733/BLOGMETALLICA.html/www.geocities.com/

rm -rv $GEO_WORK/work/geocities/www.geocities.com/toytopguy/japan/
rm -rv $GEO_WORK/geocities/www.geocities.com/toytopguy/triang/

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Cottage/6131/friends/

rm -rv $GEO_WORK/geocities/www.geocities.com/Yosemite/7115/saidno.html/

rm -rv $GEO_WORK/geocities_conflicts_1/www.geocities.com/Hollywood/Hills/7415/Trash/Trivia.html/
rm -rv $GEO_WORK/geocities_conflicts_2/www.geocities.com/Hollywood/Hills/7415/Trash/Trivia.html/
rm -rv $GEO_WORK/geocities_conflicts_2/www.geocities.com/Hollywood/Academy/5235/index.html/
rm -rv $GEO_WORK/www.geocities.com/Pipeline/Halfpipe/8882/lyrics/

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Park/9227/index.html/
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Park/9227/index.html.1 $GEO_WORK/geocities/www.geocities.com/Heartland/Park/9227/index.html

rm -rv $GEO_WORK/geocities/www.geocities.com/SoHo/Gallery/9531/index.html/
mv $GEO_WORK/geocities/www.geocities.com/SoHo/Gallery/9531/index.html.1 $GEO_WORK/geocities/www.geocities.com/SoHo/Gallery/9531/index.html

rm -rv $GEO_WORK/geocities/www.geocities.com/SunsetStrip/5847/audio/

rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Quadrant/7650/darkover/rpg/

rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Hollow/4621/rants/rants/

rm -rv $GEO_WORK/geocities/www.geocities.com/TheTropics/Island/7780/mars/mars/

# Fixing up broken things - this is how most can be fixed from a broken state... but it's a lot of work for very litte reward.
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/family.html/index.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/family1.html
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/kids.html/index.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/kids1.html
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/running.html/index.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/running1.html

rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/family.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/kids.html/
rm -rv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/running.html/

mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/family1.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/family.html 
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/kids1.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/kids.html
mv $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/running1.html $GEO_WORK/geocities/www.geocities.com/Heartland/Woods/6913/running.html

mv $GEO_WORK/geocities/www.geocities.com/Area51/Vault/1357/index.html/index.html $GEO_WORK/geocities/www.geocities.com/Area51/Vault/1357/index11.html
rm -rv $GEO_WORK/geocities/www.geocities.com/Area51/Vault/1357/index.html
mv $GEO_WORK/geocities/www.geocities.com/Area51/Vault/1357/index11.html $GEO_WORK/geocities/www.geocities.com/Area51/Vault/1357/index.html

# These will not be missed - Spam and redirection junk.
rm -rv $GEO_WORK/geocities/www.geocities.com/handy_universe/
rm -rv $GEO_WORK/geocities/www.geocities.com/handy_stern/
rm -rv $GEO_WORK/geocities/www.geocities.com/handy_jetzt/
rm -rv $GEO_WORK/geocities/www.geocities.com/handy_rolle/
rm -rv $GEO_WORK/geocities/www.geocities.com/finanzroom/
rm -rv $GEO_WORK/geocities/www.geocities.com/finanzraum/
rm -rv $GEO_WORK/geocities/www.geocities.com/finanzworlds/
rm -rv $GEO_WORK/geocities/www.geocities.com/financen2000/
rm -rv $GEO_WORK/geocities/www.geocities.com/freedownload24h/
rm -rv $GEO_WORK/geocities/www.geocities.com/informationen06/
rm -rv $GEO_WORK/geocities/www.geocities.com/jobboerse2007/
rm -rv $GEO_WORK/geocities/www.geocities.com/jobstarten/
rm -rv $GEO_WORK/geocities/www.geocities.com/jobtowner/
rm -rv $GEO_WORK/geocities/www.geocities.com/modenschauen/
rm -rv $GEO_WORK/geocities/www.geocities.com/modenschauen2007/
rm -rv $GEO_WORK/geocities/www.geocities.com/simbiosen/
rm -rv $GEO_WORK/geocities/www.geocities.com/simbiosen_b/
rm -rv $GEO_WORK/geocities/www.geocities.com/simbiosen_c/
rm -rv $GEO_WORK/geocities/www.geocities.com/sorgenfreiheit/
rm -rv $GEO_WORK/geocities/www.geocities.com/speeddirect/
rm -rv $GEO_WORK/geocities/www.geocities.com/veranstaltungen2006/
rm -rv $GEO_WORK/geocities/www.geocities.com/weblinks101/
rm -rv $GEO_WORK/geocities/www.geocities.com/kosdoi/
rm -rv $GEO_WORK/geocities/www.geocities.com/jqovjs/
rm -rv $GEO_WORK/geocities/www.geocities.com/qykmuy/
rm -rv $GEO_WORK/geocities/www.geocities.com/qlqcba/
rm -rv $GEO_WORK/geocities/www.geocities.com/uhkplf
rm -rv $GEO_WORK/geocities/www.geocities.com/oxzjah/
rm -rv $GEO_WORK/geocities/www.geocities.com/rjgagn
rm -rv $GEO_WORK/geocities/www.geocities.com/ykdoyt/
rm -rv $GEO_WORK/geocities/www.geocities.com/wkvrsu/
rm -rv $GEO_WORK/geocities/www.geocities.com/vmmfgc/
rm -rv $GEO_WORK/geocities/www.geocities.com/aquadesignnyc/
rm -rv $GEO_WORK/geocities/www.geocities.com/flug_infos
rm -rv $GEO_WORK/geocities/www.geocities.com/traumjob_jetzt/

# Since I have no idea how to query the SQL database... check via:

# cd $GEO_WORK
# find . -type d > $GEO_LOGS/010-directory-structure.txt

# Then look for any that are really long or repeating. Scrolling through should give a good idea of any missed directories.
# Use BBEdit and grep - ^.{200}


# Clean up any left over empty folders.
cd $GEO_WORK
find . -empty -type d -delete



# Then look for folders that are larger than they should be maybe? > ~250k
# find . -type d -size +250000c > $GEO_LOGS/010-directory-structure-bigfolders.txt

# Filesystem      Size  Used Avail Use% Mounted on
# /dev/sdb        2.0T  837G  1.1T  45% /media/ubuntu/GC_2TB

# We have around ~948,000 folders at this point. Yikes!

# Ubuntu 12.04
# real	26m31.034s
# user	1m28.305s
# sys	5m11.370s




