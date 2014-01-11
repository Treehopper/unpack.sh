#!/bin/sh

VERSION="1.0-1"
PACKAGE_FILE="unpack_sh-$VERSION.deb"

cp ../unpack ../pack debian/usr/bin
dpkg-deb --build debian "unpack_sh-$VERSION.deb"

echo "Install with dpkg -i $PACKAGE_FILE"

rm debian/usr/bin/*

exit 0
