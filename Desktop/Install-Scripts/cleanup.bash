#! /bin/bash -v
./base-cleanup.bash
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
  GNOME3Preview/ \
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
  RPy2/ \
  Rubygems/ \
  Spatial/ \
  Sweave-LyX/ \
  vym/
do
  pushd ${i}
  ./cleanup.bash
  popd
done
