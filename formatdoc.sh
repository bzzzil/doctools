#!/bin/bash

if [ -z "$1" ]
  then
    echo "This script is used to pretty-print all XML files inside ODF or OOXML package file."
    echo
	echo "Usage:"
	echo "	`basename "$0"` [filename]"
	exit
fi

TMPDIR=$(mktemp -d -t ci-XXXXXXXXXX)
FILENAME=$(basename $1)

unzip $1 -d $TMPDIR > /dev/null

find $TMPDIR -type f -name "*.xml" -o -type f -name "*.rels" | while read filename; do
	xmllint --format "${filename}" > "${filename}2"
	mv "${filename}2" "${filename}"  > /dev/null
done

pushd $TMPDIR > /dev/null
zip $FILENAME -r . > /dev/null
popd > /dev/null

mv $TMPDIR/$FILENAME $1  > /dev/null
rm -rf $TMPDIR
