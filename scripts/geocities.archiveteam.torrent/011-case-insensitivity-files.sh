# This script picks up the last few remaining case sensitivity related doubles.
# It uses a process similar to finding correspondent directories in '009-case-insensitivity-dirs.sh'.
#
# The difference is that it uses another algorithm to delete the offenders (see 'remove-double-files.pl').
# It takes longer to ingest the huge amount of files in contrast to the 2 million directories.
# There are roughly 28,000,000 files.
#
# For the time it takes, the amount of results are quite meagre.
# However, every file removed saves processing time for billions of occasions in the future.
#
# I want all the files in $GEO_WORK to be checked, not just the $GEO_WORK/geocities subfolder.
# cd $GEO_WORK/geocities

cd $GEO_WORK
find . -type f > $GEO_LOGS/file-index.txt

# Create a clean doubles database.
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles.sql


# Ingest the file-index.txt list into the database.
# Prepare for stars and dots!

$GEO_SCRIPTS/ingest-doubles.pl file-index.txt

# real  78m53.038s
# user  37m21.304s
# sys   9m8.134s


# Create indexes in the database to speed up sorting.
# No stars and dots this time...

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles-indexes.sql

# real  17m4.952s
# user  0m0.040s
# sys   0m0.012s


# Generate a sorted list of files.
psql --no-align --tuples-only -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/do/find-doubles.sql -o $GEO_LOGS/doubles-file-sorted.txt

# real  19m7.149s
# user  0m0.064s
# sys   0m0.027s


# Feed the double dir list into the dir-compare script that will sort or dirnames and their contents.
### FUTURE SHANE NOTE: Editing perl scripts may cause issues later.

$GEO_SCRIPTS/remove-double-files.pl

# real  0m54.711s
# user  0m26.305s
# sys   0m13.096s



# The lists are not needed any more, I'm keeping them for nostalgia!
# rm $GEO_LOGS/file-index.txt
# rm $GEO_LOGS/doubles-file-sorted.txt


# The $GEO_WORK drive should report via df -H:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  866G  1.1T   47%   /media/ubuntu/GC_2TB        # aka $GEO_WORK
