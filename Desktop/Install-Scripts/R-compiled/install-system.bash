#! /bin/bash -v

export PATH=~/R-compiled/bin:${PATH}
export R_COMPILE_PKGS=1
unset JAVA_HOME; R CMD javareconf # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
