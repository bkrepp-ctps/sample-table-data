# Sample reactable using TOWNSSURVEY_POLYM attribute data as input

library(reactable)

setwd('c:/users/bkrepp.ad/sample-table-data')
df <- read.csv('csv/townssurvey_polym.csv')

reactable(df)