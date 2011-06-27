#! /bin/bash -v

export PATH=$PATH:/usr/local/bin

# install npm
curl http://npmjs.org/install.sh | sh

# and now.js
npm install now

# CoffeeScript
npm install -g coffee-script

/sbin/ldconfig
/sbin/SuSEconfig
