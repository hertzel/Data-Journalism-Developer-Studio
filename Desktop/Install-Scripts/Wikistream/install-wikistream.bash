#! /bin/bash -v

export PATH=$PATH:/usr/local/bin
mkdir -p /opt
pushd /opt
export DIR=wikistream
export WHAT=${DIR}.git
export WHERE=http://github.com/edsu
rm -fr ${DIR}
git clone ${WHERE}/${WHAT}

pushd ${DIR}
npm install
cp config.json.example config.json
vim config.json
/sbin/ldconfig
/sbin/SuSEconfig
popd
popd
