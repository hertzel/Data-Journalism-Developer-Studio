#! /bin/bash -v

export DISPLAY=:0.0
xhost +
export PATH=/usr/local/bin:$PATH
unset JAVA_HOME; R CMD javareconf # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log

# set up environment variables, e.g., PDF reader
if [ -e /usr/lib/R/etc/Renviron ]
then
  cp Renviron32 /usr/lib/R/etc/Renviron
fi
if [ -e /usr/lib64/R/etc/Renviron ]
then
  cp Renviron64 /usr/lib64/R/etc/Renviron
fi
if [ -e /usr/local/lib/R/etc/Renviron ]
then
  cp Renviron32 /usr/local/lib/R/etc/Renviron
fi
if [ -e /usr/local/lib64/R/etc/Renviron ]
then
  cp Renviron64 /usr/local/lib64/R/etc/Renviron
fi
