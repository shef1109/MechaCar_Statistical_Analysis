# Part 1: Linear Regression to Predict MPG

# Technical Analysis

# Load dplyr package
library(dplyr)

# Import & read in MechaCar_mpg.csv file as dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar)
# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar))


# Part 2: Create Visualizations for the Trip Analysis

# Import & read in Suspension_Coil.csv file as a table
Suspension_coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe to get descriptive statistics of suspension coil's PSI
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep')
# Create lot_summary dataframe to group each manufacturing lot 
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# Part 3: T-Tests on Suspension Coils

# T-test to determine if PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_coil$PSI,mu=1500)
# T-Test to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
# Lot1
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot1")$PSI,mu=1500)
# Lot2
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot2")$PSI,mu=1500)
# Lot3
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot3")$PSI,mu=1500)
