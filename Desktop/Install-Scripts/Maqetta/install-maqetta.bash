#! /bin/bash -v

export WHERE=http://maqetta.org/downloads
export DIR=maqetta
export WHAT=maqetta-Preview2.zip

mkdir -p ~/local
pushd ~/local
rm -fr ${DIR} ${WHAT}
wget ${WHERE}/${WHAT}
mkdir ${DIR}
unzip -d ${DIR} -n ${WHAT}
chmod +x ${DIR}/*.sh
popd
