#! /bin/bash -v

mkdir -p /usr/local/src
cd /usr/local/src
export DIR=WordNet-3.0
export WHAT=${DIR}.tar.bz2
export WHERE=http://wordnetcode.princeton.edu/3.0
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
./configure
make
make install
cd ..

/sbin/ldconfig
/sbin/SuSEconfig

# clean up
rm -fr ${WHAT} ${DIR}
