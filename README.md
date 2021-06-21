# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
After performing the multivariable linear regression on the mpg dataset the results are located in figure 1. ![Figure 1](/figures/figure1.png).  Notice that there are three variables with non-random amounts of variance:
1. Vehicle Length
2. Ground Clearance
3. Intercept

The slope of the model is not zero as the p-value is less than 0.05 and is listen in figure 1 as 5.35 x 10^-11.  The model does a fair job of predicting at the multiple r squred value is .7149.  There remains additional variables that are not accounted for in the model.  We do need to be carefule to avoid over fitting the model.

##  Summary Statistics on Suspension Coils

Three lots of the suspension coils were analyzes for their summary statistics using R.  As seen in figure 2 ![Figure 2](figures/figure_2.png), when grouped together all lots are within the variance of 100 psi as the variance is at 62 psi.  However when looking at individual lots in figure 3 ![Figure 3](figures/figure_3.png) Lot 1 and Lot 2 have variances of less than the design specification of 100 psi.  Lot 3 however fails to meet this specification as its variance is greater than 100 psi at 170 psi.  Lot 3 fails to meet design specifications. 

## T-Tests on Suspension Coils

T-Tests were performed to evaluate the suspension parameters of the the entire sample set vs the population mean of 1500 psi.  In addition, each of the 3 lots were also T.tested agains the population mean of 1500 psi.  Figure 4 ![Figure 4](figures/figure_4.png) show the the p-value to be greater (0.06 vs target of 0.05) indicating the total lots are statistically similar to the population average.  As we saw in the previous summary statistics when we look at the values on the T-test by lots we see that lot 3 has a mean that is statistically different than the pouplation mean.  
Lot 1 results are in Figure 5 ![Lot 1 Figure 5](figures/figure_5.png).  
Lot 2 results are in Figure 6 ![Lot 2 Figure 6](figures/figure_6.png).  
Finally Lot 3 results are in Figure 7 ![Lot 3 Figure 7](figures/figure_7.png).
As noted in the values lot 1 and lot 2 p-values are above the 0.05 criteria, with values of 1 and 0.607 respectively.  Lot 3 however is at 0.04 and falls below the  0.05 criteria indicating this lot is statistically differnt from the population.  This supports the finding on the variance in section 2 above.

## Study Design: MechaCar vs Competition

Consumer choices are abundant in the car market.  In order for MechaCar to differntiate itself it should look to target consumers who value the advantages of MechaCar.  To ascertain these advantages, a well design statistical study is planned to better understand the difference between MechaCar and their competition.  
Safety, performance, fuel efficiency, and cost are four key metrics to understand.  
1. Data needs to be collected on horsepower, fuel efficiency (city and highway), cost, weight, length, ground clearance, and safety for all vehicles in the study.  Using standard data collection practices from NHTSA amd IIHS would be a way to make sure these measurements are collected similarly across vehicles.
2. The null hypothesis would be that the MechaCar is the same in these categories to the competition.  The alternative hypothesis is that MechaCar exceeds in these categories vs the competition.
3. For numerical data such as mpg, horsepower, weight, length, cost, and ground clearance,  simple and multi linear regression test could look for what parameters are the most influential to performance and fuel economy.  Additionally t-tests, both one and two sample test could compare vehicles across brands and entire populations.  Models should be chosen that are similar as SUV's and sedans vary significantly in their performance and parameters.  Fuel efficiency stards across model classes can be evaluated with ANOVA test.  For safety ratings using a ordinal star comparison a Chi Squared test maybe the most appropriate.

Collectively these test should be able to determine if MechaCar vehicles are similar to competitors or exceed and separate themselves from the competition.  

