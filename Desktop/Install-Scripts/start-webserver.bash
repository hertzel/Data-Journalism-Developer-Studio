#! /bin/bash -v

export PATH=/usr/local/sbin:/usr/local/bin:$PATH
set|grep ^PATH
/sbin/chkconfig rstudio-server on
/etc/init.d/rstudio-server start
ps -elf|grep rstudio|grep -v grep
