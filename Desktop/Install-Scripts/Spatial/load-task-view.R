update.packages(ask=FALSE, repos='http://cran.cnr.berkeley.edu')
install.packages(c(
  'RODBC',
  'RPostgreSQL'), 
  repos='http://cran.cnr.berkeley.edu'
)
library(ctv)
install.views('Spatial', repos='http://cran.cnr.berkeley.edu')
