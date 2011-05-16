#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/server:/database:/postgresql/openSUSE_11.4/server:database:postgresql.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y postgresql postgresql-devel postgresql-contrib \
  postgresql-docs pgadmin3 perl-DBD-Pg

sudo /sbin/chkconfig postgresql on
sudo /etc/init.d/postgresql restart
