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

### TIMES GO HERE
### TIMES GO HERE
### TIMES GO HERE


# Create indexes in the database to speed up sorting.

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles-indexes.sql

### TIMES GO HERE
### TIMES GO HERE
### TIMES GO HERE


# Generate a sorted list of files.
psql --no-align --tuples-only -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/do/find-doubles.sql -o $GEO_LOGS/doubles-file-sorted.txt

# real    261m8.978s
# user    57m27.591s
# sys     10m15.014s


# Feed the double dir list into the dir-compare script that will sort or dirnames and their contents.
### FUTURE SHANE NOTE: Editing perl scripts may cause issues later.

$GEO_SCRIPTS/remove-double-files.pl


# real    10m49.846s
# user    0m23.697s
# sys     0m13.885s


# The lists are not needed any more, I'm keeping them for nostalgia!
# rm $GEO_LOGS/file-index.txt
# rm $GEO_LOGS/doubles-file-sorted.txt
