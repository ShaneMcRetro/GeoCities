# Since mangling this collection on a file system basis is finished,
# let's move it into the archive directory.

# These probably need to be the base directories? What is considered base?
# Perhaps items contained in $GEO_WORK/geocities are base - www.geocities.com
mv -v $GEO_WORK/geocities $GEO_ARCHIVE/main
mv -v $GEO_WORK/geocities_conflicts_1 $GEO_ARCHIVE/conflicts_1
mv -v $GEO_WORK/geocities_conflicts_2 $GEO_ARCHIVE/conflicts_2
mv -v $GEO_WORK/conflicts $GEO_ARCHIVE/conflicts_3

# Next is database ingesting! Make sure the tables 'files', 'urls' and 'props'
# are ready. See the 'sql' directory. If you can, disable constraints and
# indexes while ingesting -- only if you know what this means!
# It can dramatically speed up the process, but terribly destroy your database
# if something goes wrong.

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/files.sql
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/urls.sql
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/props.sql

# These probably need to be the base directories? What is considered base?
# Perhaps items contained in $GEO_WORK/geocities are base - www.geocities.com
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/main

# real    1918m42.469s
# user    261m58.098s
# sys     71m10.146s

$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_1
# real    0m9.397s
# user    0m2.262s
# sys     0m0.939s

$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_2
# real    0m0.465s
# user    0m0.294s
# sys     0m0.045s

$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_3
# real    0m25.195s
# user    0m5.908s
# sys     0m2.083s


psql -d $GEO_DB_DB --no-align --tuples-only -U despens -f $GEO_SCRIPTS/sql/do/dump-files.sql -o $GEO_LOGS/db-files.txt

# real    0m41.707s
# user    0m14.119s
# sys     0m8.876s


### THERE IS NO SPLIT.PL PRESENT ###
# For some real lowbrow multitasking, split the list file into
# 128 parts to have 4 ingest scripts run at the same time. This helps
# because it seems like startup times of external applications that
# are called by GeoURLs are the main time waster here. This also works
# better if you don't happen to have 16 GB of RAM.

# cd $GEO_LOGS
# ./split.pl db-files.txt 128

# dtach -n urlingest1 bash -c 'for i in {1..32}; do $GEO_SCRIPTS/GeoURLs.pl $i; done'
# dtach -n urlingest2 bash -c 'for i in {33..64}; do $GEO_SCRIPTS/GeoURLs.pl $i; done'
# dtach -n urlingest3 bash -c 'for i in {65..96}; do $GEO_SCRIPTS/GeoURLs.pl $i; done'
# dtach -n urlingest4 bash -c 'for i in {97..128}; do $GEO_SCRIPTS/GeoURLs.pl $i; done'

# On my system without RAID, I got roughly 1 million files per hour using this approach.
# If you do not like or need this, you can just run the below and it will take in everything from one file.

cd $GEO_LOGS
$GEO_SCRIPTS/GeoURLs.pl

# TIMES GO HERE
# TIMES GO HERE
# TIMES GO HERE
