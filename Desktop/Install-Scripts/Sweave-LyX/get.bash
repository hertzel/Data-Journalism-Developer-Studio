#! /bin/bash -v
export WHERE=http://cran.fhcrc.org/contrib/extra/lyx
wget -N ${WHERE}/INSTALL
wget -N ${WHERE}/README
wget -N ${WHERE}/Sweave-test-1.lyx
wget -N ${WHERE}/literate-article.layout
wget -N ${WHERE}/literate-book.layout
wget -N ${WHERE}/literate-report.layout
wget -N ${WHERE}/literate-scrap.inc
wget -N ${WHERE}/preferences
wget -N ${WHERE}/template-vignette.lyx
wget -N ${WHERE}/test.lyx
