install.packages("tidyverse")
library(tidyverse)
president <- read.csv("PRESIDENT_precinct_primary.csv")
biden <- 0
trump <- 0  
n<-length(president$precinct)
for (i in 1:n)
{
  if (president$candidate[i] == "JOSEPH R BIDEN")
    biden = biden + president$votes[i]
  else if (president$candidate[i] == "DONALD J TRUMP")
    trump = trump + president$votes[i]
}
cat("votes for biden",biden)
cat("votes for trump",trump)