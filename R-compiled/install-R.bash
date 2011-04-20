#! /bin/bash -v

# make local source tree
export SOURCE=~/src
mkdir -p ${SOURCE}
pushd ${SOURCE}
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-patched
export WHAT=${DIR}.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm -fr ${WHAT}
popd

# make local build / install tree
export BUILD=~/R-compiled
rm -fr ${BUILD}
mkdir -p ${BUILD}
pushd ${BUILD}

# environment variables
export R_PAPERSIZE='letter'
export R_BROWSER='/usr/bin/chromium'
export R_PDFVIEWER='/usr/bin/evince'

# configure
${SOURCE}/${DIR}/configure \
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

# compile with bytecode
make bytecode 2>&1 | tee bytecode.log
make pdf 2>&1 | tee pdf.log

# check
export PATH=${BUILD}/bin:${PATH}
export R_COMPILE_PKGS=1
export R_ENABLE_JIT=0
make check-all 2>&1 | tee check-all.log
popd
