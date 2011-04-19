#! /bin/bash -v

# first, get rid of installed R!
zypper remove R-patched R-patched-devel
if [ -e /usr/lib/R ]
then
  rm -fr /usr/lib/R
fi
if [ -e /usr/lib64/R ]
then
  rm -fr /usr/lib64/R
fi

mkdir -p /usr/local/src
cd /usr/local/src
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export DIR=R-patched
export WHAT=R-patched.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm -fr ${WHAT}

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
make info
make install
make install-info
cd ..

/sbin/ldconfig
/sbin/SuSEconfig
