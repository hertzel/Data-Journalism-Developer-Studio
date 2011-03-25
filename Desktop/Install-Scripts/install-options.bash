#! /bin/bash -v
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
  ./install-dependencies.bash
  ./install-all.bash
  popd
done
