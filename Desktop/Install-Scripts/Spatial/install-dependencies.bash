#! /bin/bash -v

# Geospatial / Mapping
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Application:/Geo/openSUSE_11.4/Application:Geo.repo
sudo zypper addrepo -cf http://download.opensuse.org/repositories/science/openSUSE_11.4/science.repo
sudo zypper refresh
sudo zypper update

sudo zypper install -y gdal libgdal-devel perl-gdal
sudo zypper install -y libnetcdf-devel
sudo zypper install -y gd-devel
sudo zypper install -y proj4 libproj-devel
sudo zypper install -y postgis postgis-utils
sudo zypper install -y grass grass-docs grass-devel libgdal-grass
sudo zypper install -y libgeos-devel libgeos-docs
sudo zypper install -y libitpp-devel libitpp-doc
sudo zypper install -y qgis qgis-devel qgis-plugin-grass
sudo zypper install -y tktable
