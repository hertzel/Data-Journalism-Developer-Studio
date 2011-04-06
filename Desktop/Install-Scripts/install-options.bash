#! /bin/bash -v
for i in \
  BARD/ \
  BrowserDevelopment/ \
  ComputationalSeismology/ \
  Finance/ \
  GGobi/ \
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
  RSRuby/ \
  Spatial/ \
  Sweave-LyX/
do
  pushd ${i}
  ./cleanup.bash
  ./install-dependencies.bash
  ./install-all.bash
  popd
done
