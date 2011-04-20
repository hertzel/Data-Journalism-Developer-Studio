#! /bin/bash -v
rm -fr ~/.lyx; lyx # start with a clean slate
cp literate-* ~/.lyx/layouts/
cat preferences >> ~/.lyx/preferences
cp template-vignette.lyx ~/.lyx/templates/
cp test.lyx Sweave-test-1.lyx ~/.lyx/examples/

# now install in TeX 
sudo mkdir -p /usr/share/texmf/tex/latex/R
for d in "local/lib" "local/lib64" "lib" "lib64" "~/R-compiled/lib"
do
  if [[ -e /usr/${d}/R/share/texmf ]]
  then
    sudo cp -av /usr/${d}/R/share/texmf/* /usr/share/texmf/tex/latex/R/
  fi
done
sudo texhash

lyx # reconfigure!
lyx *.lyx # test
