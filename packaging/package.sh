#!/bin/sh

VERSION="1.0-1"
PACKAGE_FILE="unpack_sh-$VERSION.deb"
BASE="debian"

cp ../unpack ../pack "$BASE/usr/bin"
dpkg-deb --build "$BASE" "$PACKAGE_FILE"

echo "1. Install with $ dpkg -i $PACKAGE_FILE"
echo "2. Install missing dependencies with $ apt-get -f install"

rm $BASE/usr/bin/*

exit 0
