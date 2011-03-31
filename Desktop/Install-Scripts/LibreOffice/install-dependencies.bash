#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/server:/database:/postgresql/openSUSE_11.4/server:database:postgresql.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y postgresql postgresql-devel postgresql-contrib pgadmin3
sudo zypper install -y libreoffice
sudo zypper install -y libreoffice-base
sudo zypper install -y libreoffice-base-drivers-postgresql
sudo zypper install -y libreoffice-base-extensions
sudo zypper install -y libreoffice-branding-openSUSE
sudo zypper install -y libreoffice-calc
sudo zypper install -y libreoffice-calc-extensions
sudo zypper install -y libreoffice-converter
sudo zypper install -y libreoffice-draw
sudo zypper install -y libreoffice-draw-extensions
sudo zypper install -y libreoffice-filters
sudo zypper install -y libreoffice-filters-optional
sudo zypper install -y libreoffice-gnome
sudo zypper install -y libreoffice-help-en-US
sudo zypper install -y libreoffice-hyphen
sudo zypper install -y libreoffice-impress
sudo zypper install -y libreoffice-impress-extensions
sudo zypper install -y libreoffice-languagetool-en
sudo zypper install -y libreoffice-mailmerge
sudo zypper install -y libreoffice-math
sudo zypper install -y libreoffice-openclipart
sudo zypper install -y libreoffice-templates-en
sudo zypper install -y libreoffice-templates-labels-a4
sudo zypper install -y libreoffice-templates-labels-letter
sudo zypper install -y libreoffice-templates-presentation-layouts
sudo zypper install -y libreoffice-thesaurus-en-US
sudo zypper install -y libreoffice-writer
sudo zypper install -y libreoffice-writer-extensions
