# Since mangling the archives on a file system level is finished, let's move them into the archive directory.
# Well... that's not exactly true. We still manipulate some index.html files in script 013.

# These need to be the base directories.
# www.geocities.com and conflicting regional folders

mv -v $GEO_WORK/geocities $GEO_ARCHIVE/main
mv -v $GEO_WORK/geocities_conflicts_1 $GEO_ARCHIVE/conflicts_1
mv -v $GEO_WORK/geocities_conflicts_2 $GEO_ARCHIVE/conflicts_2
mv -v $GEO_WORK/geocities_conflicts_3 $GEO_ARCHIVE/conflicts_3
mv -v $GEO_WORK/geocities_conflicts_4 $GEO_ARCHIVE/conflicts_4
mv -v $GEO_WORK/geocities_conflicts_5 $GEO_ARCHIVE/conflicts_5
mv -v $GEO_WORK/geocities_conflicts_6 $GEO_ARCHIVE/conflicts_6
mv -v $GEO_WORK/geocities_conflicts_7 $GEO_ARCHIVE/conflicts_7
mv -v $GEO_WORK/geocities_conflicts_8 $GEO_ARCHIVE/conflicts_8
mv -v $GEO_WORK/geocities_conflicts_9 $GEO_ARCHIVE/conflicts_9
mv -v $GEO_WORK/geocities_conflicts_10 $GEO_ARCHIVE/conflicts_10
mv -v $GEO_WORK/geocities_conflicts_11 $GEO_ARCHIVE/conflicts_11
mv -v $GEO_WORK/geocities_conflicts_12 $GEO_ARCHIVE/conflicts_12
mv -v $GEO_WORK/geocities_conflicts_13 $GEO_ARCHIVE/conflicts_13
mv -v $GEO_WORK/geocities_conflicts_14 $GEO_ARCHIVE/conflicts_14
mv -v $GEO_WORK/geocities_conflicts_15 $GEO_ARCHIVE/conflicts_15

# Next is database ingesting! Make sure the tables 'files', 'urls' and 'props'
# are ready. See the 'sql' directory. If you can, disable constraints and
# indexes while ingesting -- only if you know what this means!
# It can dramatically speed up the process, but terribly destroy your database
# if something goes wrong.

psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/files.sql
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/urls.sql
psql -d $GEO_DB_DB -U despens -f $GEO_SCRIPTS/sql/create/props.sql

#Start ingesting...
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/main

# Ubuntu 12.04
# real    1518m42.469s
# user    261m58.098s
# sys     71m10.146s


# More Ingesting, but much quicker.
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_1
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_2
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_3
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_4
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_5
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_6
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_7
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_8
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_9
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_10
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_11
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_12
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_13
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_14
$GEO_SCRIPTS/GeoIngest.pl $GEO_ARCHIVE/conflicts_15


psql -d $GEO_DB_DB --no-align --tuples-only -U despens -f $GEO_SCRIPTS/sql/do/dump-files.sql -o $GEO_LOGS/db-files.txt

# Ubuntu 12.04
# real	0m51.657s
# user	0m17.236s
# sys	0m9.560s


$GEO_SCRIPTS/GeoURLs.pl

# Ubuntu 12.04
# real	4420m44.965s
# user	1289m1.742s
# sys	2043m30.108s
