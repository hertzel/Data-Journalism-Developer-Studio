#! /bin/bash -v

export PATH=$PATH:/usr/local/bin

mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=node-v0.4.9
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}

pushd ${DIR}
./configure
make 
make install

/sbin/ldconfig
/sbin/SuSEconfig
popd

# clean up
rm -fr ${WHAT} ${DIR}
popd
