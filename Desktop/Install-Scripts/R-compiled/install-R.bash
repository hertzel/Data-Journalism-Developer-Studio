#! /bin/bash -v

mkdir -p /usr/local/src
pushd /usr/local/src
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-patched
export WHAT=R-patched.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm -fr ${WHAT}
popd

mkdir -p /usr/local/R-compiled
pushd /usr/local/R-compiled
export R_PAPERSIZE='letter'
export R_BROWSER='chromium'
export R_PDFVIEWER='evince'
/usr/local/src/${DIR}/configure \
  --enable-threads \
  --enable-static \
  --enable-shared \
  --enable-R-profiling \
  --enable-BLAS-shlib \
  --enable-R-shlib \
  --enable-R-static-lib \
  --with-tcltk \
  --with-cairo \
  --with-libpng \
  --with-jpeglib \
  --with-x
make
make check
popd
exit

/sbin/ldconfig
/sbin/SuSEconfig
