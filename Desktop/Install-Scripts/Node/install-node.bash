#! /bin/bash -v

export PATH=$PATH:/usr/local/bin

mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=node-v0.4.4
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}

pushd ${DIR}
./configure
make 
make install

# now install npm
curl http://npmjs.org/install.sh | sh

# and now.js
npm install now

# CoffeeScript
npm install -g coffee-script

/sbin/ldconfig
/sbin/SuSEconfig
popd

# clean up
rm -fr ${WHAT} ${DIR}
popd
