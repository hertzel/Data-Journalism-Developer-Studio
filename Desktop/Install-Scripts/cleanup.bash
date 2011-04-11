#! /bin/bash -v
sudo rm -fr rstudio
sudo rm -fr build
rm -f *.log
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
  R-beta/ \
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
