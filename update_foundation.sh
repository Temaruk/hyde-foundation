#!/bin/bash

# Based on the hyde-bootstrap project's update-bootstrap-libs.sh on github.
# https://github.com/auzigog/hyde-bootstrap/blob/master/update-bootstrap-libs.sh

echo "Fetching foundation from github..."
git submodule update --recursive

echo "Copying foundation js and scss files under media..."
rsync -r `pwd`/foundation/js/* `pwd`/site/content/media/js
rsync -r `pwd`/foundation/scss/* `pwd`/site/content/media/scss