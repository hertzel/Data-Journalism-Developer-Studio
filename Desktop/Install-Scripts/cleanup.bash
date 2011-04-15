#! /bin/bash -v
sudo ./base-cleanup.bash
sudo rm -fr rstudio
sudo rm -fr build
for i in \
  BARD/ \
  beancounter/ \
  BrowserDevelopment/ \
  ComputationalSeismology/ \
  Finance/ \
  freemind/ \
  GGobi/ \
  gvim/ \
  JGR/ \
  LibreOffice/ \
  MachineLearning/ \
  Mallet/ \
  Mondrian/ \
  Multimedia/ \
  NaturalLanguageProcessing/ \
  Node/ \
  OpenFTS/ \
  Perl-packages/ \
  Python-NLTK/ \
  Rapache/ \
  Rattle/ \
  Rcmdr/ \
  ReproducibleResearch/ \
  R-patched/ \
  RPy2/ \
  RSRuby/ \
  Spatial/ \
  Sweave-LyX/ \
  vym/
do
  pushd ${i}
  ./cleanup.bash
  popd
done
