 
##### sci for zip vs deaths analysis##
df_sci_3 <- df_1 %>% filter(user_loc==fr_loc)
t_sci_3 <- final_df_new[,c(1,2,30,34,35,36)]
df_sci_3$deaths_per_capita = final_df_new$deaths_per_capita
df_sci_3$adi= final_df_new$adi
df_sci_3$nalaxone = final_df_new$nalaxone
df_sci_3$odr = final_df_new$odr
df_sci_3$population_density = final_df_new$population_density
df_sci_3$population_density <- scale(df_sci_3$population_density)
colnames(df_sci_3)[4] <- "sci"
m1.1 <- lm(sci ~ adi+population_density, data=df_sci_3)
summary(m1.1)
