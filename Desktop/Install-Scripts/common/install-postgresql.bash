#! /bin/bash -v

TEST=`/sbin/chkconfig | grep postgresql | wc -l`
if [ "$TEST" != "1" ]
then
  echo "Installing PostgreSQL and friends"
  sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/server:/database:/postgresql/openSUSE_11.4/server:database:postgresql.repo
  sudo zypper refresh
  sudo zypper update

  sudo zypper install -y postgresql postgresql-devel postgresql-contrib \
    postgresql-docs pgadmin3 perl-DBD-Pg

  sudo /sbin/chkconfig postgresql on
  sudo /etc/init.d/postgresql start
else
  echo "PostgreSQL and friends have already been installed"
fi
