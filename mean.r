rm(list = ls())  # Clears the environment , removes all the objects 

## Load the "IBM_Employee_Attrition_v3" dataset, from the raw_data module in CANVAS, into R. This is a variation of a fictional data set created by IBM data scientists for predicting employee attrition. 
## Perform the EDA analysis by:

## I.	Summarizing each column (e.g. min, max, mean )
att1 <-read.csv("IBM_Attrition_v3.csv") 
View(att1)
summary(att1)

## Identify missing values:
str(att1)
table(is.na(att1))

## III.	Displaying the frequency table of "Attrition" vs. "MaritalStatus" 
freq_table <-table(att1$Attrition, att1$MaritalStatus)
print(freq_table)

## IV.	Displaying the scatter plot of "Age", "MaritalStatus" and "YearsAtCompany", one pair at a time
plot(att1$Age, att1$MaritalStatus,main = "scatterplot for age and Maritalstatus", xlab = "Age", ylab = "MaritalStatus")
plot(att1$Age, att1$YearsAtCompany,main = "scatterplot for age and YearsAtCompany", xlab = "Age", ylab = "YearsAtCompany")
plot(att1$MaritalStatus, att1$YearsAtCompany,main = "scatterplot for Maritalstatus and YearsAtCompany", xlab = "MartialStatus", ylab = "YearsAtcompany")

## V.	Showing box plots for columns:  "Age", "MaritalStatus" and "YearsAtCompany"
hist(att1$Age, main = "Histogram of Age", xlab = "Age")
boxplot(att1$Age, main = "Boxplot of Age", xlab = "Age")
att1$MaritalStatus <- as.numeric(att1$MaritalStatus)
View(att1)

hist(att1$MaritalStatus, main = "Histogram of MaritalStatus", xlab = "Maritalstatus")
boxplot(att1$MaritalStatus, main = "Boxplot of Maritalstatus", xlab = "Martialstatus")
hist(att1$YearsAtCompany, main = "Histogram of YeasAtCompany", xlab = "YearsAtCompany")
boxplot(att1$YearsAtCompany, main = "Boxplot of YearsAtCompany", xlab = "YearsAtCompany")

## VI.	Replacing the missing values of "MonthlyIncome" with the "mean" of "MonthlyIncome".
att1$MonthlyIncome[is.na(att1$MonthlyIncome)] <- round(mean(att1$MonthlyIncome, na.rm = TRUE))
View(att1)
