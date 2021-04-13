library(tidyverse)

decode <- read_csv("city-of-st-louis-decode.csv")
survey <- read_csv("city-of-st-louis-survey.csv")

surveydecode <- survey %>%
  filter(str_sub(Owner, 1,1) == "A") %>%
  inner_join(decode, by = c("Owner"="Original Name"))

surveydecode %>%
  group_by(`Standardized Names`) %>%
  summarize(Total_Land = sum(`Land Area`)) %>%
  slice_max(Total_Land, n = 10)


