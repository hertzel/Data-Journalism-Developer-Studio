#! /bin/bash -v
for i in \
  BARD/ \
  beancounter/ \
  BrowserDevelopment/ \
  ComputationalSeismology/ \
  Finance/ \
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
