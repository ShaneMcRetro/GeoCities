#!/bin/bash

# df -H should reveal:
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  910G  960G   49%   /media/ubuntu/GC_2TB        # aka $GEO_WORK
# /dev/sdc    2.0T  756G  1.2T   41%   /media/ubuntu/GC_1TB_SRC    # aka $GEO_SOURCE

# The torrent holds some 7zip archives that already contain real directories, most contain tarballs.
# They will be untared and deleted after otherwise the 2TB drive ain't big enough.
# Chronomex, JCN, Latecomer and Santiago are decompressed after this.

cd $GEO_WORK

ls -f -1 | tr '\n' '\0' | xargs -0 file -i | grep -i application/x-tar | sed 's/:.\+//' | tr '\n' '\0' | xargs -I filename -0 -n 1 bash -c 'tar xvf filename && rm -v filename'
# list all    Separate    Run the "file"     "grep" finds all the files  Throwing away    Convert new-   Run bash to execute the untar operation             ^^^^^^^^^^^^^^^^^
# files in    lines by    command on each    that are tarballs.          any output but   lines to       and delete the tarballs after successful            Remove this if you
# the dir,    NULL bytes  found file to                                  the file names.  NULL bytes     decrunching.                                        would like to keep
# just name   for xargs.  determine its                                                   so xargs can                                                       copies of the
# and one                 mime-type.                                                      pass each                                                          decrunched files!
# column.                                                                                 filename as 
#                                                                                         an argument


# Decompress single archives for JCN, Latecomer, Santiago and SpindleyQ

cd $GEO_SOURCE/archiveteam-geocities-latecomer
mkdir -p $GEO_WORK/Latecomer
tar -xvf gc.tar.xz -C $GEO_WORK/Latecomer

cd $GEO_SOURCE/archiveteam-geocities-santiago
mkdir -p $GEO_WORK/Santiago
7z x 2012-06-geocities-catchup.zip -o$GEO_WORK/Santiago
mkdir -p $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare
tar -xvf archived_geocities_stuff_by_lord_nightmare.tar.gz -C $GEO_WORK/Santiago/archived_geocities_stuff_by_lord_nightmare

cd $GEO_SOURCE/geocities-jcn-pack
mkdir -p $GEO_WORK/JCN
tar -xvf geocities.jcn-grab.tar.bz2 -C $GEO_WORK/JCN

cd $GEO_SOURCE/geocities.archiveteam.torrent/ARCHIVES/
mkdir -p $GEO_WORK/unmangled-SpindleyQ
mkdir -p $GEO_WORK/mirrors-SpindleyQ
tar -xvf geocities-unmangled-SpindleyQ.tar.gz -C $GEO_WORK/unmangled-SpindleyQ
tar -xvf geocities-mirrors-SpindleyQ.tar.gz -C $GEO_WORK/mirrors-SpindleyQ

cd $GEO_WORK

# The following are the expected numbers in each subfolder inside $GEO_WORK.
# ArchiveTeam           38,334,585 items, totalling 884.1 GB.
# Latecomer             670,494 items, totalling 15.5 GB.
# Santiago              509,730 items, totalling 9.5 GB.
# JCN Pack              68,942 items, totalling 1.3 GB.
# Chronomex             34,960 items, totalling 601.5 MB (Will appear after script 006a).
# unmangled-SpindleyQ   9,432 items, totalling 375.8 MB.
# mirrors-SpindleyQ     3,694 items, totalling 232.2 MB.

# df -H should reveal (roughly):
# Filesystem  Size  Used  Avail  Use%  Mounted on
# /dev/sdb    2.0T  995G  874G   54%   /media/ubuntu/GC_2TB        # aka $GEO_WORK
# /dev/sdc    2.0T  756G  1.2T   41%   /media/ubuntu/GC_1TB_SRC    # aka $GEO_SOURCE

# As everything in in order, make a backup of the untouched files.
# I used a 2TB hard drive with identical block size so dd could be used in both directions.

# sudo dd if=/dev/sdX of=/dev/sdX bs=4M status=progress

# Next pull the source HD and backup HD from the machine, taking them offline for safe keeping.


# Ubuntu 12.04
# real   187m21.118s
# user   24m39.666s
# sys    52m50.792s




