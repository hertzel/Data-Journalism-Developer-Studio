#! /bin/bash -v
cd ~
tar cvf - /etc/sysconfig/SuSEfirewall2 | bzip2 -9c > firewall.tar.bz2
tar cvf - /etc/inittab /etc/init.d/.depend.halt /etc/init.d/.depend.stop \
  /etc/init.d/.depend.boot /etc/init.d/.depend.start \
  /etc/rstudio/secure-cookie-key | bzip2 -9c > runlevels.tar.bz2
tar cvf - /etc/shadow /etc/passwd | bzip2 -9c > useradd.tar.bz2
tar cvf - /usr/sbin/rstudio-server /etc/init.d/rstudio-server \
  /sbin/rcrstudio-server /etc/pam.d/rstudio | bzip2 -9c > rstudio.tar.bz2
tar cvf - /usr/lib/R | bzip2 -9c > usr-lib-R.tar.bz2
tar cvf - /usr/local | bzip2 -9c > usr-local.tar.bz2
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
