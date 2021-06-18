#load library dplyr
library(dplyr)
# read in csv 
mechaCarMpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
#create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg_table)
#summaries linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg_table))
