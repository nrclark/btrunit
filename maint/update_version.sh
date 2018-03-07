#!/bin/sh

# Updates the expected version string for each test-case that checks it.
# The new string is retrieved from /VERSION, which should be updated
# first.

for file in ../src/test/*.dist; do
    sed -ri "s/Version: [0-9]+[.][0-9]+[.][0-9]+/Version: $(cat ../VERSION)/g" $file
done
