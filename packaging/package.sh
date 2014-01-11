#!/bin/sh

VERSION="1.0-1"
PACKAGE_FILE="unpack_sh-$VERSION.deb"
BASE="debian"

cp ../unpack ../pack "$BASE/usr/bin"
dpkg-deb --build "$BASE" "$PACKAGE_FILE"

echo "Install with dpkg -i $PACKAGE_FILE"

rm "$BASE/usr/bin/*"

exit 0
