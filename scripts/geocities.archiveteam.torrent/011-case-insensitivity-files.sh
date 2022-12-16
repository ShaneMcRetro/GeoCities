# This script picks up the last few remaining case sensitivity related doubles.
# It uses a process similar to finding correspondent directories in '009-case-insensitivity-dirs.sh'.
#
# The difference is that it uses another algorithm to delete the offenders (see 'remove-double-files.pl').
# It takes longer to ingest the huge amount of files in contrast to the 2 million directories.
# There are roughly 28,000,000 files.
#
# For the time it takes, the amount of results are quite meagre.
# However, every file removed saves processing time for triillions of occasions in the future.


cd $GEO_WORK/geocities
find . -type f > $GEO_LOGS/file-index.txt

# Create a clean doubles database.
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles.sql


# Ingest the file-index.txt list into the database.
# Prepare for stars and dots!

$GEO_SCRIPTS/ingest-doubles.pl file-index.txt

# Ubuntu 12.04
# real	87m27.841s
# user	47m50.672s
# sys	8m48.117s



# Create indexes in the database to speed up sorting.
# No stars and dots this time...

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles-indexes.sql

# Ubuntu 12.04
# real	50m49.913s
# user	0m0.040s
# sys	0m0.019s


# Generate a sorted list of files.
psql --no-align --tuples-only -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/do/find-doubles.sql -o $GEO_LOGS/doubles-file-sorted.txt

# Ubuntu 12.04
# real  19m7.149s
# user  0m0.064s
# sys   0m0.027s


# Feed the double dir list into the dir-compare script that will sort or dirnames and their contents.

$GEO_SCRIPTS/remove-double-files.pl

# Ubuntu 12.04
# real	1m9.388s
# user	0m22.864s
# sys	0m23.811s




# The lists are not needed any more, I'm keeping them for nostalgia!
# rm $GEO_LOGS/file-index.txt
# rm $GEO_LOGS/doubles-file-sorted.txt


# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  838G  1.1T   45%   /media/ubuntu/GC_2TB        # aka $GEO_WORK

