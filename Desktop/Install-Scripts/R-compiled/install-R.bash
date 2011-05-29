#! /bin/bash -v

# make local source tree
export SOURCE=/usr/local/src
rm -fr ${SOURCE}; mkdir -p ${SOURCE}
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
export BUILD=/usr/local/R-compiled
rm -fr ${BUILD}; mkdir -p ${BUILD}
pushd ${BUILD}

# environment variables
export R_PAPERSIZE='letter'
export R_BROWSER='/usr/bin/firefox'
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
  --with-x \
  2>&1 | tee /R-configure.log

# compile
make 2>&1 | tee /R-make.log
make pdf 2>&1 | tee /R-pdf.log
make install | tee /R-install.log
popd

rm -fr ${SOURCE}
rm -fr ${BUILD}
/sbin/ldconfig
/sbin/SuSEconfig
