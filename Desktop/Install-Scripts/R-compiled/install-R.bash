#! /bin/bash -v

mkdir -p /usr/local/src
pushd /usr/local/src
export WHERE=http://cran.cnr.berkeley.edu/src/base/R-2
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-2.13.0
export DIR=R-patched
export WHAT=${DIR}.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm -fr ${WHAT}
popd

export BUILD=/usr/local/R-compiled
rm -fr ${BUILD}
mkdir -p ${BUILD}
pushd ${BUILD}
export R_PAPERSIZE='letter'
export R_BROWSER='/usr/bin/chromium'
export R_PDFVIEWER='/usr/bin/evince'
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
make bytecode 2>&1 | tee bytecode.log
make pdf 2>&1 | tee pdf.log
export PATH=/usr/local/R-compiled/bin:${PATH}
export R_COMPILE_PKGS=1
export R_ENABLE_JIT=0
make check-all 2>&1 | tee check-all.log
popd
