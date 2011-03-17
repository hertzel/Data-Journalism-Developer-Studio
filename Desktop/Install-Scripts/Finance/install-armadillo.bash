#! /bin/bash -v

mkdir -p /usr/local/src
cd /usr/local/src
export DIR=armadillo-1.1.2
export WHAT=${DIR}.tar.gz
export WHERE=http://downloads.sourceforge.net/arma
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
cmake .
make
make install
cd ..

/sbin/ldconfig
/sbin/SuSEconfig

# clean up
rm -fr ${WHAT} ${DIR}
