#! /bin/bash -v

export DISPLAY=:0.0
xhost +
export PATH=/usr/local/bin:$PATH
unset JAVA_HOME; R CMD javareconf # needed for rJava

R CMD INSTALL dynamicnetwork*gz
R CMD INSTALL rSoNIA*gz
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
