#! /bin/bash -v

# first, get rid of installed R!
zypper remove R-patched R-patched-devel

mkdir -p /usr/local/src
cd /usr/local/src
export WHERE=http://cran.r-project.org/src/base-prerelease/
export DIR=R-beta
export WHAT=R-latest.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}

cd ${DIR}
export R_PAPERSIZE='letter'
export R_BROWSER='chromium'
export R_PDFVIEWER='evince'
./configure \
  --enable-threads \
  --enable-static \
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
make pdf
make info
make check
make install
make install-info
make install-pdf
cd ..

# clean up
rm -fr ${WHAT} ${DIR}

/sbin/ldconfig
/sbin/SuSEconfig
