source("http://bioconductor.org/biocLite.R", echo=TRUE)
biocinstall('Rgraphviz')
install.packages(c(
  'statnet',
  'network',
  'numDeriv',
  'sna',
  'networksis',
  'igraphtosonia',
  'relevent',
  'hergm',
  'rgl',
  'SparseM',
  'igraph'),
  repos='http://cran.cnr.berkeley.edu'
)
