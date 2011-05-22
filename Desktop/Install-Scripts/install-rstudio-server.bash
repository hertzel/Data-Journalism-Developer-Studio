#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
make install 2>&1 | tee ../make-install-server.log
