# Maintainer: sos-developers <aur@saveoursecrets.com>
pkgname=saveoursecrets
pkgver=2.0.0+124
pkgrel=1
pkgdesc="Secure password manager and wallet"
arch=('x86_64')
url="https://saveoursecrets.com"
license=('custom')
depends=(
  'glibc'
  'libsecret'
  'jsoncpp'
  'dbus'
)
source=("https://releases.savoursecrets.com/beta/gui/${pkgver}/arch/x86_64/${pkgname}.tar.gz")
sha256sums=('SKIP') # replace with real checksum

package() {
  cd "$srcdir/${pkgname}-${pkgver}"

  install -Dm755 saveoursecrets "$pkgdir/usr/opt/$pkgname/saveoursecrets"
  install -Dm755 sos-extension-helper "$pkgdir/usr/opt/$pkgname/sos-extension-helper"
  cp -r lib "$pkgdir/usr/opt/$pkgname/"
  cp -r data "$pkgdir/usr/opt/$pkgname/"

  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname"

  install -d "$pkgdir/usr/bin"
  ln -sr "$pkgdir/usr/opt/$pkgname/saveoursecrets" "$pkgdir/usr/bin/saveoursecrets"
  ln -sr "$pkgdir/usr/opt/$pkgname/sos-extension-helper" "$pkgdir/usr/bin/sos-extension-helper"
}
