#! /bin/bash -v
rm *.log
for i in BrowserDevelopment/ Finance/ LibreOffice/ Multimedia/ \
  NaturalLanguageProcessing/ Perl-packages/ Python-NLTK/ ReproducibleResearch/ \
  Spatial/ Sweave-LyX/
do
  pushd ${i}
  ./cleanup.bash
  popd
done
