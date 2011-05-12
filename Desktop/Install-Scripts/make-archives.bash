#! /bin/bash -v
cd ~
tar cvf - \
  /etc/shadow /etc/passwd \
  /usr/sbin/rstudio-server \
  /etc/init.d/rstudio-server \
  /sbin/rcrstudio-server \
  /etc/pam.d/rstudio \
  /etc/sysconfig/SuSEfirewall2 \
  /etc/init.d/.depend.halt /etc/init.d/.depend.stop \
  /etc/init.d/.depend.boot /etc/init.d/.depend.start \
  /etc/rstudio/secure-cookie-key \
  | bzip2 -9c > config.tar.bz2
tar cvf - /usr/lib/R | bzip2 -9c > usr-lib-R.tar.bz2
tar cvf - /usr/local | bzip2 -9c > usr-local.tar.bz2
tar cvf - .bashrc perl5 .cpan | bzip2 -9c > perl5.tar.bz2
