update.packages(ask=FALSE, repos='http://cran.cnr.berkeley.edu')
install.packages(c(
  'textir',
  'lda',
  'OAIHarvester',
  'statnet',
  'network',
  'numDeriv',
  'sna',
  'igraph',
  'topicmodels',
  'stringkernels'),
  repos='http://cran.cnr.berkeley.edu'
)
library(ctv)
install.views('NaturalLanguageProcessing', 
  repos='http://cran.cnr.berkeley.edu'
)