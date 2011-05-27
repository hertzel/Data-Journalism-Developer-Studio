#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
R CMD INSTALL dynamicnetwork*gz
R CMD INSTALL rSoNIA*gz
