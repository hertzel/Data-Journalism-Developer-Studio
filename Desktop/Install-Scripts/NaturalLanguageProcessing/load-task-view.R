update.packages(ask=FALSE, repos='http://cran.cnr.berkeley.edu')
install.packages(c(
  'textir',
  'lda',
  'statnet',
  'igraph',
  'topicmodels',
  'stringkernels'),
  repos='http://cran.cnr.berkeley.edu'
)
library(ctv)
install.views('NaturalLanguageProcessing', 
  repos='http://cran.cnr.berkeley.edu'
)