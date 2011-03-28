#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
unset JAVA_HOME; R CMD javareconf # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log

# set up environment variables, e.g., PDF reader
if [ -e /usr/lib/R/etc/Renviron ]
then
  gvim /usr/lib/R/etc/Renviron
fi
if [ -e /usr/lib64/R/etc/Renviron ]
then
  gvim /usr/lib64/R/etc/Renviron
fi
