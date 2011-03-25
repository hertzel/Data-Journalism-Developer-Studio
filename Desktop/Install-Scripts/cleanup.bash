#! /bin/bash -v
sudo rm -fr rstudio
sudo rm -fr build
rm *.log
for i in \
  BrowserDevelopment/ \
  ComputationalSeismology/ \
  Finance/ \
  GGobi/ \
  JGR/ \
  LibreOffice/ \
  Mallet/ \
  Mondrian/ \
  Multimedia/ \
  NaturalLanguageProcessing/ \
  OpenFTS/ \
  Perl-packages/ \
  Python-NLTK/ \
  Rattle/ \
  Rcmdr/ \
  ReproducibleResearch/ \
  RPy2/ \
  RSRuby/ \
  Spatial/ \
  Sweave-LyX/
do
  pushd ${i}
  ./cleanup.bash
  popd
done
