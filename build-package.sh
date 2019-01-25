#!/bin/sh

VER="1.13.0"

mkdir -p deb/usr/local/bin
mkdir -p deb/usr/local/lib/wine_helper
mkdir -p deb/usr/local/share/wine_helper
mkdir -p deb/usr/local/etc/wine_helper
mkdir -p deb/DEBIAN

cat > deb/DEBIAN/control << EOF
Package: wine-scripts
Version: $VER
Section: otherosfs
Architecture: all
Installed-Size: 29.1K
Depends: bash | sh | dash, awk, sed, curl
Suggests: wine | wine-staging, winetricks
Priority: optional
Maintainer: Volk_Milit <javirrdar@gmail.com>
Description: WINE is not emulator helper scripts for easy using multiply wine installations in any place you like.

EOF

cp src/wine* deb/usr/local/bin
cp src/libs/wine* deb/usr/local/lib/wine_helper
cp src/share/help* deb/usr/local/share/wine_helper
cp src/share/settings.conf deb/usr/local/etc/wine_helper
sudo chown root:root  deb/usr/local/bin/*
sudo chown root:root  deb/usr/local/lib/wine_helper/*
sudo chown root:root  deb/usr/local/share/wine_helper/*
sudo chown root:root  deb/usr/local/etc/wine_helper/*

cd deb
md5sum $(find ./ -type f | awk '!/^\.\/DEBIAN/ { print substr($0, 3) }') > DEBIAN/md5sums ; chmod 0644 DEBIAN/md5sums
cd ..
fakeroot dpkg-deb --build deb
#lintian deb.deb
mv deb.deb wine-scripts-"$VER"_any.deb
