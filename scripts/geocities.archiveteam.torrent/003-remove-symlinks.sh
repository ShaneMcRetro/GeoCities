#!/bin/bash

# Symlinks are bad for business, so we'll remove them all.
# Anyway, it is already known what belongs where:
# All user directories from YAHOOIDS need to go to www.geocities.com.
# The rest just tries to solve cAsE iSsUeS that will be tackled in another way soon.

cd $GEO_WORK

find . -type l -print0  |  xargs -n 1 -P4 -0 rm -v
# "type l" means           Delete these bastards...
# to look for symlinks.    fast!




# TIMES GO HERE
