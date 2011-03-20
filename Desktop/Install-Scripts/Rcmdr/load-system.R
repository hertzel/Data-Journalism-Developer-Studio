source("http://bioconductor.org/biocLite.R", echo=TRUE)
biocinstall('Rgraphviz')
install.packages(c(
  'relimp',
  'multcomp',
  'leaps',
  'aplpack',
  'effects',
  'lmtest',
  'tm',
  'tm.plugin.mail',
  'Rcmdr',
  'RcmdrPlugin.Export',
  'RcmdrPlugin.TeachingDemos',
  'RcmdrPlugin.TextMining',
  'RcmdrPlugin.epack',
  'RcmdrPlugin.sos'),
  repos='http://cran.cnr.berkeley.edu')
