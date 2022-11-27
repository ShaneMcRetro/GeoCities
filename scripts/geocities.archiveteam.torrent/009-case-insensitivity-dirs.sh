#!/bin/bash

# Remove files that have been downloaded multiple thanks to case sensitivity issues.
# We are calling on the power of a database server for processing these.

# sudo apt update && sudo apt install postgresql postgresql-contrib
# DELETE THE ABOVE LINE WHEN DONE AS IT HAS BEEN PUT INTO STEP 000a

# Add the database login file to your home folder.
# If you set these differently you can retrieve them via the "env" command.


### Make sure you have completed the steps in 000a-setup before starting this script. ###
# DELETE THE ABOVE LINE WHEN DONE AS IT HAS BEEN PUT INTO STEP 000a


# Directory names will be handled, since this will solve issues for most files contained inside of them.
# To speed things up, create a list of all directory names and save it in a file.

# Include conflicts by starting in root of $GEO_WORK directory.
# Then again maybe this is a bad idea as they will be seen as doubles by the database?
# Or maybe they are safe if they are pathnames...

cd $GEO_WORK
find . -type d > $GEO_LOGS/dir-index.txt

# real    116m21.050s
# user    0m32.966s
# sys     4m7.619s


# Create a database table to hold directory names
# directory names converted to lower case.
# No indexes or constraints are present in the table to enable a swift ingest.

# Make sure your database server is prepared and that you have a 
# .pgpass file in case your db server asks for passwords each 
# time!

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles.sql


# Put all this stuff into the database

$GEO_SCRIPTS/ingest-doubles.pl dir-index.txt

# real    8m11.323s
# user    4m28.981s
# sys     0m28.762s


# Create indexes in the database to speed up sorting.

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/doubles-indexes.sql

# real    3m22.510s
# user    0m0.012s
# sys     0m0.020s

# Generate a sorted list of directories.
psql --no-align --tuples-only -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/do/find-doubles.sql -o $GEO_LOGS/doubles-dir-sorted.txt

# real    135m23.145s
# user    0m0.324s
# sys     0m0.288s

# Feed the double dir list into the dir-compare script that
# will sort or dirnames and their contents.
$GEO_SCRIPTS/remove-double-dirs.pl

# real    1006m39.783s
# user    558m57.844s
# sys     75m33.795s

# This is nerve griding, get a RAID5 if you can!!!1

# The lists are not needed any more, but I am collecting lists to see how mangled they are...
# rm -v $GEO_LOGS/dir-index.txt
# rm -v $GEO_LOGS/doubles-dir-sorted.txt
