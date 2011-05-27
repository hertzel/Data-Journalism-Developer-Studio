#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
mkdir -p /usr/local/src
pushd /usr/local/src
export WHERE=http://biostat.mc.vanderbilt.edu/rapache/files
export DIR=rapache-1.1.14
export WHAT=${DIR}.tar.gz
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
pushd ${DIR}
./configure --with-apache2-apxs=/usr/sbin/apxs2
make
make install
/sbin/ldconfig
/sbin/SuSEconfig
popd
rm -fr ${WHAT} ${DIR} # clean up
popd
