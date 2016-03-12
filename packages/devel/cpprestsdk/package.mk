PKG_NAME="cpprestsdk"
PKG_VERSION="2.8.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/fhriley/cpprestsdk"
PKG_URL="http://www.tunemyharley.com/mytune/releases/cpprestsdk.tar.gz"
PKG_DEPENDS_TARGET="toolchain boost libressl"
PKG_PRIORITY="optional"
PKG_SECTION=""
PKG_SHORTDESC="cpprestsdk"
PKG_LONGDESC="cpprestsdk"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

configure_target() {
  cmake -DCMAKE_TOOLCHAIN_FILE=$CMAKE_CONF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_MODULE_PATH=$SYSROOT_PREFIX/usr/lib/kodi \
        -DCMAKE_PREFIX_PATH=$SYSROOT_PREFIX/usr \
        -DBUILD_SAMPLES=OFF \
        -DBUILD_SHARED_LIBS=OFF \
        -DBUILD_TESTS=OFF \
        Release
}
