pkgname=wine-helper-scripts
pkgver=1.13.0
pkgrel=1
pkgdesc="Script helper for wine"
arch=('any')
url="https://github.com/VolkMilit/wine-helper-script"
license=('WTFPL v2.0')
groups=()
depends=("sh" "diffutils" "gawk" "p7zip" "curl" "winetricks")
makedepends=()
optdepends=()
backup=()
install=
options=()
source=()
md5sums=()

package() {
	cd ${srcdir}
	install -m 0755 -D wine-install ${pkgdir}/usr/local/bin/wine-install
	install -m 0755 -D wine-shortcut ${pkgdir}/usr/local/bin/wine-shortcut
	install -m 0755 -D wine-tools ${pkgdir}/usr/local/bin/wine-tools
	install -m 0755 -D winew ${pkgdir}/usr/local/bin/winew
	install -m 0644 -D libs/wine_helper_global.shlib ${pkgdir}/usr/local/lib/wine_helper/wine_helper_global.shlib
	install -m 0644 -D share/help_winew ${pkgdir}/usr/local/share/wine_helper/help_winew
	install -m 0644 -D share/help_wine-install ${pkgdir}/usr/local/share/wine_helper/help_wine-install
	install -m 0644 -D share/help_wine-shortcut ${pkgdir}/usr/local/share/wine_helper/help_wine-shortcut
	install -m 0644 -D share/help_wine-tools ${pkgdir}/usr/local/share/wine_helper/help_wine-tools
	install -m 0644 -D share/settings.conf ${pkgdir}/usr/local/etc/wine_helper/settings.conf
}
