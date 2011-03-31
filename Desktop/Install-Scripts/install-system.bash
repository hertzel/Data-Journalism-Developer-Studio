#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
unset JAVA_HOME; R CMD javareconf # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log

# set up environment variables, e.g., PDF reader
if [ -e /usr/lib/R/etc/Renviron ]
then
  vim /usr/lib/R/etc/Renviron
fi
if [ -e /usr/lib64/R/etc/Renviron ]
then
  vim /usr/lib64/R/etc/Renviron
fi
if [ -e /usr/local/lib/R/etc/Renviron ]
then
  vim /usr/local/lib/R/etc/Renviron
fi
if [ -e /usr/local/lib64/R/etc/Renviron ]
then
  vim /usr/local/lib64/R/etc/Renviron
fi
