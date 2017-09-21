library(vegan)
library(dplyr)
library(readr)
data("dune")
data("dune.env")


dune = dune %>%
  mutate(site = paste("site", 1:n(), sep="_"))%>%
  select(site, everything())

dune.env = dune.env %>%
  mutate(site = paste("site", 1:n(), sep="_"))%>%
  select(site, everything())

write_csv(dune,path = "data/dune.csv")
write_csv(dune.env,path = "data/dune.env.csv")


