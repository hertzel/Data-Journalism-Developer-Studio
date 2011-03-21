update.packages(ask=FALSE, repos='http://cran.cnr.berkeley.edu')
install.packages(c(
  'stringr',
  'rgeos',
  'RODBC',
  'RPostgreSQL'), 
  repos='http://cran.cnr.berkeley.edu'
)
library(ctv)
install.views('Spatial', repos='http://cran.cnr.berkeley.edu')
