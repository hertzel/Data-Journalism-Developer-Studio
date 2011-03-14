#! /bin/bash -v

# add a user
sudo /usr/sbin/useradd -r rstudio-server

# soft link
sudo ln -sf /usr/local/rstudio-server/bin/rstudio-server /usr/sbin/rstudio-server

# config files
sudo cp initscript /etc/init.d/rstudio-server
sudo ln -s /etc/init.d/rstudio-server /sbin/rcrstudio-server
sudo cp pamscript /etc/pam.d/rstudio

# firewall - open port 8787
sudo /sbin/yast2 firewall

# NTP server
sudo /sbin/yast2 ntp-client

# run levels
sudo /sbin/yast2 runlevel

# we should be ready - browse to IP address
/sbin/ifconfig
