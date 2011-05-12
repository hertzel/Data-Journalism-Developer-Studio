#! /bin/bash -v
cd ~
tar cvf - /etc/shadow /etc/passwd /etc/sysconfig/SuSEfirewall2 \
  /etc/init.d/rstudio-server /etc/init.d/.depend.halt /etc/init.d/.depend.stop \
  /etc/init.d/.depend.boot /etc/init.d/.depend.start | bzip2 -9c > etc.tar.bz2
tar cvf - /usr/lib/R | bzip2 -9c > usr-lib-R.tar.bz2
tar cvf - /etc/init.d/rstudio-server /etc/pam.d/rstudio /usr/local \
  | bzip2 -9c > usr-local.tar.bz2
tar cvf - .bashrc perl5 .cpan | bzip2 -9c > perl5.tar.bz2
