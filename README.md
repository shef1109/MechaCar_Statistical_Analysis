# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using lm(), we created a linear regression model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file (Fig. 1) and using summary(), we are able to determine the p-value and r-squared value (Fig 2): 

<p align="center">
  <img src="images/Linear_regression.png">
  </p>
<p align = "center">
Fig.1 - Linear Regression Model
</p>

<p align="center">
  <img src="images/P_value_R_value.png">
  </p>
<p align = "center">
Fig.2 - Linear Regression Model: p-value and r-squared value
</p>

Using the results above, we are able to answer the following questions:

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

From our linear regression output in Fig. 1, one can notice that the slope of vehicle_length and ground_clearance are significantly larger than the other variables/coefficients. Additionally, looking at our results in Fig. 2, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. This means that if the p-value is less than a certain significance level, then the predictor variable is said to have a statistically significant relationship with the response variable in the model. As shown in Fig. 2, both vehicle_length and ground_clearance are noted to have p-values less than the indicated significance level of 5%. Therefore, we can say that both vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in the dataset.

**Is the slope of the linear model considered to be zero? Why or why not?**

The linear regression model based on Fig. 1 is:
mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle + 3.55 * ground_clearance - 3.41 * AWD - 1.04e+2

Because the coeffiecients of each variable is a non-zero value, we could say that the slope of the linear model is not considered to be zero, though our negative coefficient value for AWD may not indicate this to be entirely accurate. However, based on our P-value of 5.35e-11, which is smaller than our assumed significance level of 5% (meaning we would reject a null hypothesis stating slope=0) , we can confidently say that the slope of our linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Based on our results in Fig. 2, one can note that the R-squared value is equal to 0.7149, or approximately 71%. This means that this linear model will accurately predict mpg MechaCar prototypes approximately 71% of the time. Though not great, we can still consider this linear model as fairly effective to predict mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. We created a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots.

<p align="center">
  <img src="images/total_summary.png">
  </p>
<p align = "center">
Fig.3 - Summary Statistics of the suspension coil’s PSI column
</p>

- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

<p align="center">
  <img src="images/lot_summary.png">
  </p>
<p align = "center">
Fig.4 - Summary statistics on PSI of the suspension coils per lot
</p>

**Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. From, Fig. 3, the summary statistics across all manufacturing lots indicates that the variance is 62.29356, which is less than 100 PSI, which meets the design specification. However, in Fig. 4, we can see that variance of the suspension coils in Lot1 (0.98 PSI) and Lot2 (7.47 PSI) meet these requirements, but Lot3 is 170.29 which is significantly higher than 100 is definitely not meeting the design specification. 

## T-Tests on Suspension Coils

We performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

<p align="center">
  <img src="images/t_test_all_manufacturing_lots.png">
  </p>
<p align = "center">
Fig.5 - T-test For All Manufacturing Lots
</p>

The p-value of this t-test is equal 0.06 which is above the assumed significance level (5%). Therefore, we would state that there is not enough evidence to reject the null hypothesis and there is no overall statistical difference between the population mean of 1500 pounds per square inch and the PSI across all manufacturing lots.

<p align="center">
  <img src="images/t_test_lot1.png">
  </p>
<p align = "center">
Fig.6 - T-test For Lot1
</p>

For Lot1, the p-value is equal to 1, which is greater than the assumed significance level of 0.05. Therefore, there is not enough evidence to reject the null hypothesis and there is no overall statistical difference between the PSI across Lot1 and the population mean of 1500 PSI.

<p align="center">
  <img src="images/t_test_lot2.png">
  </p>
<p align = "center">
Fig.7 - T-test For Lot2
</p>

For Lot2, the p-value is equal to 0.6072, which is also greater than the assumed significance level of 0.05. Therefore, there is not enough evidence to reject the null hypothesis and there is no overall statistical difference between the PSI across Lot2 and the population mean of 1500 PSI.

<p align="center">
  <img src="images/t_test_lot3.png">
  </p>
<p align = "center">
Fig.8 - T-test For Lot3
</p>

For Lot3, the p-value is equal to 0.04168, which is less than the assumed significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis and say that there is a statistical difference between the PSI across Lot3 and the population mean of 1500 PSI. Thus indicating that something went wrong in Lot 3's production cycle. The process needs to be checked for system fails and the suspension coils from this lot need to be inspected to remove those not meeting quality criteria.

## Study Design: MechaCar vs Competition

Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

We are going to test the correlation between the existence of active driver assistance technologies in cars and the safety of passengers. 

**Metrics to test**

- 5 Star Safety Ratings: The National Highway Traffic Safety Administration’s New Car Assessment Program (NCAP) created the 5-Star Safety Ratings Program to provide consumers with information about the crash protection and rollover safety of new vehicles beyond what is required by Federal law. One star is the lowest rating; five stars is the highest. More stars equal safer cars.

- Driver assistance technology options: Adaptive Cruise Control - Traffic Sign Recognition - Forward collision warning - Lane Departure Warning - Automatic Emergency Braking - Rearview video system - Blind Spot Warning...

**Null and Alternative hypothesis**

- Null Hypothesis : Cars with different active safety technologies are not safer than other cars. 

- Alternative Hypothesis: Cars with different active driver safety technologies will have higher safety ratings.

**Statistical test chosen to test the hypothesis**
- Chi-Squared Test: This test can be used to determine if there is a difference in categorical frequencies between groups. For example: How many vehicles with Automatic Emergency Braking have a safety level 5 vs How many vehicles with no Automatic Emergency Braking have a safety level 5? 
- It the p-value of our Chi-Squared Test is less than the assumed significance level of 0.05, then we can reject the null hypothesis and say that vehicles with active Automatic Emergency Braking are safer. 

**Data needed to run the statistical test**
- Vehicle Data: Driver assistance technology options available in each vehicle model. 
- The 5 star safety rating data for all vehicles. 
