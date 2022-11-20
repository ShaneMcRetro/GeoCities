# Merge as much as possible from the leftover profiles in YAHOOIDS into www.geocities.com
# In perl we trust

cd $GEO_WORK/geocities/YAHOOIDS

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/geocities/www.geocities.com'

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/conflicts/main1/www.geocities.com'

mkdir -p $GEO_WORK/conflicts/main2/www.geocities.com

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/conflicts/main2/www.geocities.com'


# Manually delete these after inspecting to see what's left after two rounds.
# rm -rv $GEO_WORK/geocities/YAHOOIDS

# Now that that is out of the way do a full backup.

# sudo dd if=/dev/sdX of=/dev/sdX bs=4M status=progress

# real    1909m46.145s
# user    46m57.052s
# sys     141m25.910s
