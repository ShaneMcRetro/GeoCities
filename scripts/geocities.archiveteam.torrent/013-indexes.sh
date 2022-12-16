# Find everything that could be an index file, like "index.html", "index.htm", "INDEX.HTM", etc.

psql -d $GEO_DB_DB --no-align --tuples-only -U despens -f $GEO_SCRIPTS/sql/do/find-indexes.sql -o $GEO_LOGS/indexes-list.txt


# Ubuntu 12.04
# real	1m51.063s
# user	0m0.927s
# sys	0m0.523s


# Delete unneeded index files from disk and database, mark the right ones as "homepage".

$GEO_SCRIPTS/filter-indexes.pl

# Ubuntu 12.04
# real	16m26.653s
# user	4m5.697s
# sys	1m16.744s


# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  838G  1.1T   45%   /media/GC_2TB        # aka $GEO_WORK

# Do a backup...
# sudo dd if=/dev/sdX of=/dev/sdX bs=4M status=progress


# ...and we're done!


