#! /bin/bash -v

mkdir -p /usr/local/src
cd /usr/local/src
export DIR=QuantLib-1.0.1
export WHAT=${DIR}.tar.gz
export WHERE=http://downloads.sourceforge.net/project/quantlib/QuantLib/1.0.1
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
./configure
/usr/bin/time make --jobs=3
make install
cd ..

/sbin/ldconfig
/sbin/SuSEconfig

# clean up
rm -fr ${WHAT} ${DIR}
