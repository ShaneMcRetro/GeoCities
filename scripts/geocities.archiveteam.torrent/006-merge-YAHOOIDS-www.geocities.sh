# Merge as much as possible from the leftover profiles in YAHOOIDS into www.geocities.com
# In perl we trust

cd $GEO_WORK/geocities/YAHOOIDS

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/geocities/www.geocities.com'

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/geocities_conflicts_1/www.geocities.com'

mkdir -p $GEO_WORK/geocities_conflicts_2/www.geocities.com

find . -mindepth 2 -maxdepth 2 -type d -print0 | xargs -0 -I pathname bash -c '$GEO_SCRIPTS/merge_directories.pl pathname $GEO_WORK/geocities_conflicts_2/www.geocities.com'


# Remove the empty folders
rm -rv $GEO_WORK/geocities/YAHOOIDS


# Ubuntu 12.04
# real	1649m47.320s
# user	256m34.022s
# sys	1384m23.223s

# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  924G  945G   50%   /media/ubuntu/GC_2TB       # aka $GEO_WORK

# Now that that is out of the way do a full backup.
# sudo dd if=/dev/sdX of=/dev/sdX bs=4M status=progress
