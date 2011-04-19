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

export BUILD=/usr/local/R-compiled
rm -fr ${BUILD}
mkdir -p ${BUILD}
pushd ${BUILD}
export R_PAPERSIZE='letter'
export R_BROWSER='chromium'
export R_PDFVIEWER='evince'
export R_ENABLE_JIT=3
export R_COMPILE_PKGS=1
export R_COMPILER_SUPPRESS_ALL=1
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
make bytecode 2>&1 | tee make-bytecode.log
make check-all 2>&1 | tee check-all.log
popd
exit

/sbin/ldconfig
/sbin/SuSEconfig
