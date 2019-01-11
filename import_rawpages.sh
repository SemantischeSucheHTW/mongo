#!/bin/sh
cd /tmp
unzip $RAWPAGES_ARCHIVE
mongoimport --db $RAWPAGES_DATABASE --collection $RAWPAGES_COLLECTION --file $RAWPAGES_FILE
