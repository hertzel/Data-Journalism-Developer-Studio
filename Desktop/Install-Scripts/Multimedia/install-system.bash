#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
unset JAVA_HOME; R CMD javareconf # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
