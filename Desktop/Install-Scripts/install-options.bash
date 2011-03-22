#! /bin/bash -v
for i in BrowserDevelopment/ Finance/ GGobi/ JGR/ LibreOffice/ Mallet/ \
  Mondrian/ Multimedia/ NaturalLanguageProcessing/ OpenFTS/ Python-NLTK/ \
  Rattle/ Rcmdr/ ReproducibleResearch/ Spatial/ Sweave-LyX/
do
  pushd ${i}
  ./cleanup.bash
  ./install-dependencies.bash
  ./install-all.bash
  popd
done
