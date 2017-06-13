#!/usr/bin/env bash

mkdir -p deb/usr/local/bin
mkdir -p deb/usr/local/share/wine_helper
mkdir -p deb/DEBIAN
cat > deb/DEBIAN/control << EOF
Package: wine-scripts
Version: 1.9.0
Section: games
Architecture: all
Priority: optional
Maintainer: Volk_Milit <javirrdar@gmail.com>
Description: WINE is not emulator helper scripts for easy using multiply wine installations in any place you like.

EOF

cp src/wine* deb/usr/local/bin
cp src/help deb/usr/local/share/wine_helper
chmod 0644 deb/usr/local/bin/*
chmod 0644 deb/usr/local/share/wine_helper/*
chmod +x deb/usr/local/bin/*

cd deb
md5sum $(find ./ -type f | awk '!/^\.\/DEBIAN/ { print substr($0, 3) }') > DEBIAN/md5sums ; chmod 0644 DEBIAN/md5sums
cd ..
fakeroot dpkg-deb --build deb
lintian deb.deb
mv deb.deb wine-scripts-1.9.0_amd64.deb
