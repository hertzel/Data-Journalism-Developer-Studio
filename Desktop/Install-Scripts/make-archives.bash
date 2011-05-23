#! /bin/bash -v
cd ~
sudo tar cvf - /etc/sysconfig/SuSEfirewall2 | bzip2 -9c > firewall.tar.bz2
sudo tar cvf - /etc/shadow /etc/passwd | bzip2 -9c > useradd.tar.bz2
sudo tar cvf - /usr/sbin/rstudio-server /etc/init.d/rstudio-server \
  /sbin/rcrstudio-server /etc/pam.d/rstudio | bzip2 -9c > rstudio.tar.bz2
sudo tar cvf - /usr/local | bzip2 -9c > usr-local.tar.bz2
sudo tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
