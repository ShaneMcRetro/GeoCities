#!/bin/bash

# Create the directory for the torrent, if it doesn't exist already.
# Uses the environment variable GEO_SOURCE!

mkdir -p $GEO_SOURCE/geocities.archiveteam.torrent
cd $GEO_SOURCE/geocities.archiveteam.torrent

# Download XML files containing checksums from archive.org
for i in {1..8};
do
    wget -cv http://www.archive.org/download/2009-archiveteam-geocities-part${i}/2009-archiveteam-geocities-part${i}_files.xml;
done

# Rinse and repeat for extra content

# 1. Geocities Latecomer (15gb addition)
mkdir -p $GEO_SOURCE/archiveteam-geocities-latecomer
cd $GEO_SOURCE/archiveteam-geocities-latecomer

# Download XML file containing checksums from archive.org
do
    wget -cv https://archive.org/download/archiveteam-geocities-latecomer/archiveteam-geocities-latecomer_files.xml;
done


# 2. Geocities: The Santiago Grab
mkdir -p $GEO_SOURCE/archiveteam-geocities-santiago
cd $GEO_SOURCE/archiveteam-geocities-santiago

# Download XML file containing checksums from archive.org
do
    wget -cv https://archive.org/download/archiveteam-geocities-santiago/archiveteam-geocities-santiago_files.xml;
done

# 3. Geocities: JCN Grab
mkdir -p $GEO_SOURCE/geocities-jcn-pack
cd $GEO_SOURCE/geocities-jcn-pack

# Download XML file containing checksums from archive.org
do
    wget -cv https://archive.org/download/geocities-jcn-pack/geocities-jcn-pack_files.xml;
done
