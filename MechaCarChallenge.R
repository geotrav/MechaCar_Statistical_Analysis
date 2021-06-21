#load library dplyr and tidyverse
library(dplyr)
library(tidyverse)
# read in csv 
mechaCarMpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
#create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg_table)
#summaries linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg_table))

# read in suspension coil csv
suspensionCoil_table <-read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors=F)
total_summary<- suspensionCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")

lot_summary<- suspensionCoil_table %>%group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")

all_T_Test<- t.test(suspensionCoil_table$PSI,mu=1500)
?t.test()
lot1_T_Test<- t.test(suspensionCoil_table$PSI,mu=1500, subset=Manufacturing_Lot=="Lot1")
lot2_T_Test<- t.test(suspensionCoil_table$PSI,mu=1500, subset=Manufacturing_Lot=="Lot2")
lot3_T_Test<- t.test(suspensionCoil_table$PSI,mu=1500, subset=Manufacturing_Lot=="Lot3")
