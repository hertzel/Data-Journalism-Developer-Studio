#! /bin/bash -v

# Impro-Visor is in Packman (improvisor) but the version there is older
VERSION=4_12

# download latest version
rm impro-visor_unix_*.sh
wget http://downloads.sourceforge.net/project/impro-visor/impro-visor_unix_${VERSION}.sh?use_mirror=softlayer

# install
chmod +x impro-visor_unix_${VERSION}.sh
sudo ./impro-visor_unix_${VERSION}.sh
