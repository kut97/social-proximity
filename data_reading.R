library(readr)
library("dplyr")
library("zipcodeR")
library(ggplot2)

#import TSV file into data frame
data_county_county <- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/county_county.tsv')
data_zipcode0<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard0.tsv')
data_zipcode1<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard1.tsv')
data_zipcode2<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard2.tsv')
data_zipcode3<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard3.tsv')
data_zipcode4<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard4.tsv')
data_zipcode5<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard5.tsv')
data_zipcode6<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard6.tsv')
data_zipcode7<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard7.tsv')
data_zipcode8<- read_tsv('C:/Users/Yixuan/OneDrive - University of Pittsburgh/Desktop/Data for Social Good/SCI/zcta_zcta_shard8.tsv')

PA<-search_state('PA')
distance_county<-zip_distance(data_county_county$user_loc,data_county_county$fr_loc)
distance_county <- distance_county[!is.na(distance_county$distance), ]
distance_county <- setNames(distance_county, c("user_loc","fr_loc","distance"))
total <- merge(data_county_county,distance_county,by=c("user_loc","fr_loc"))
PA<-PA[ , c('zipcode')]
PA <- setNames(PA, c("user_loc"))
total <- merge(total,PA,by=c("user_loc"))
PA <- setNames(PA, c("fr_loc"))
total <- merge(total,PA,by=c("fr_loc"))

max_value=max(total$scaled_sci)
total$scaled_sci<-total$scaled_sci/max_value

distance_plot<-ggplot(total, aes(x = distance, y = scaled_sci)) +
  geom_point()+scale_y_log10()
distance_plot
