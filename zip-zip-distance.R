

COU <- read.table("C:/Users/86156/Desktop/Data Project/county_county.tsv", header=T, sep="\t")
ZIP <- read.table("C:/Users/86156/Desktop/Data Project/Zip/zcta_zcta_shard1.tsv", header=T, sep="\t")
library(zipcodeR)
library(tidyverse)
library(igraph)
library(ggplot2)
ZIP_PA <- ZIP %>% 
  filter(user_loc %in% 15001:19612 & fr_loc %in% 15001:19614) %>%
  distinct(scaled_sci,.keep_all = TRUE)
ZIP_PA_DIS <- ZIP_PA %>% 
  mutate(zip_distance(user_loc, fr_loc)) %>%
  select(user_loc,fr_loc,scaled_sci,distance)
ggplot(ZIP_PA_DIS,aes(distance,scaled_sci)) +
  geom_jitter(height = 2, width = 2)

COU_PA <- COU %>% 
  filter(user_loc %in% 42001:42999 & fr_loc %in% 42001:42999) %>%
  distinct(scaled_sci,.keep_all = TRUE) %>%
  mutate(user_1 = 42, user_2 = user_loc-42000, fr_1 = 42, fr_2 = fr_loc-42000)


COU_PA_ZIP <- COU_PA %>%
  mutate(zip1 = search_fips(user_1,user_2),zip2 = search_fips(fr_1,fr_2))

search_fips(42,131)

