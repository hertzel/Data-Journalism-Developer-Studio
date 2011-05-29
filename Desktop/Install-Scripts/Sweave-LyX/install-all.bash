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

rm -fr ~/.lyx; lyx # start with a clean slate
cp literate-* ~/.lyx/layouts/
cat preferences >> ~/.lyx/preferences
cp template-vignette.lyx ~/.lyx/templates/
cp test.lyx Sweave-test-1.lyx ~/.lyx/examples/

# now install in TeX 
sudo mkdir -p /usr/share/texmf/tex/latex/R
for d in "local/lib" "local/lib64" "lib" "lib64"
do
  if [[ -e /usr/${d}/R/share/texmf ]]
  then
    sudo cp -av /usr/${d}/R/share/texmf/* /usr/share/texmf/tex/latex/R/
  fi
done
sudo texhash

lyx 2>&1 | tee reconfigure.log # reconfigure!
lyx *.lyx # test
