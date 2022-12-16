#!/bin/bash


#############################
# START           chronomex #
#############################


# This one was trapped in YahooIDs. Need to decompress it and merge.
# Need to decompress this one before we remove symlinks.

mv $GEO_WORK/geocities/YAHOOIDS/d/i/diomedes.phear.cc $GEO_WORK/chronomex_temp

mkdir -p $GEO_WORK/chronomex

cd $GEO_WORK/chronomex_temp/~chronomex/geocities

tar -xvf chronomex.~2.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.1.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.2.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.3.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.5.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.6.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~a.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~b.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~c.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~d.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~e.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~f.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~g.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~h.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~i.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~j.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~k.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~l.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~m.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~n.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.nonwww.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~o.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~p.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~r.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~s.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~t.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~u.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~v.tar.gz -C $GEO_WORK/chronomex
tar -xvf chronomex.~w.tar.gz -C $GEO_WORK/chronomex

rm -rv $GEO_WORK/chronomex_temp

#############################
# END             chronomex #
#############################



# Symlinks are bad for business, so we'll remove them all.
# We already know what belongs where:
# All user directories from YAHOOIDS need to go to www.geocities.com.
# The rest just tries to solve cAsE iSsUeS that will be tackled in another way soon.

cd $GEO_WORK

find . -type l -print0  |  xargs -n 1 -P4 -0 rm -v
# "type l" means           Delete these bastards...
# to look for symlinks.    fast!


# Ubuntu 12.04
# real  10m34.653s
# user  1m43.810s
# sys   3m19.959s
