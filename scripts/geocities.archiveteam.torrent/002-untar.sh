#!/bin/bash

# The torrent holds some 7zip archives that already contain real directories, most contain tarballs.
# They will be untared and deleted after.

cd $GEO_WORK

ls -f -1 | tr '\n' '\0' | xargs -0 file -i | grep -i application/x-tar | sed 's/:.\+//' | tr '\n' '\0' | xargs -I filename -0 -n 1 bash -c 'tar xvf filename && rm -v filename'
# list all    Separate    Run the "file"     "grep" finds all the files  Throwing away    Convert new-   Run bash to execute the untar operation             ^^^^^^^^^^^^^^^^^
# files in    lines by    command on each    that are tarballs.          any output but   lines to       and delete the tarballs after successful            Remove this if you
# the dir,    NULL bytes  found file to                                  the file names.  NULL bytes     decrunching.                                        would like to keep
# just name   for xargs.  determine its                                                   so xargs can                                                       copies of the
# and one                 mime-type.                                                      pass each                                                          decrunched files!
# column.                                                                                 filename as 
#                                                                                         an argument

# The following are the expected numbers in each subfolder inside $GEO_WORK.
# ArchiveTeam 38,334,585 items, totalling 884.1 GB.
# Latecomer   670,494 items, totalling 15.5 GB.
# Santiago    509,730 items, totalling 9.5 GB.
# GCN Pack    68,941 items, totalling 1.3 GB.
