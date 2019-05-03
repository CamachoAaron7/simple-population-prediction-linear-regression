getwd()
setwd("C:/users/camac/desktop/r_intro")
read.csv("Idaho-Population.csv")
data = read.csv("Idaho-Population.csv", header = TRUE)

# Linear Regresssion
fit = lm(IdahoPopulation ~ year, data) # '~' means explained by
summary(fit)

# graphical representation of the Idaho Population Data
plot(data)

# Another graphical representation of the Idaho Population Data
# install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(x=IdahoPopulation, y=year)) + geom_point() + geom_smooth(method="lm")

# Call out specific columns from summary function 
coef(summary(fit))
co = coef(summary(fit))
co[, 1]
co[, 4] #

# Using the Linear Equation to predidct Idaho 2020 Population
-35145702 + 18264 * 2020

# Use Predict Function to predict Idaho 2020 Population
Population_2020 = data.frame(year=2020)
Prediction_2020 = predict(fit, Population_2020)
Prediction_2020
summary(Prediction_2020)

# A graphical representation of the Linear Regression created above with residuals. 
plot(fit)

# Histogram/Boxplot for Idaho Estimated Population of the current data
attach(data)
min(IdahoPopulation)
max(IdahoPopulation)
max(IdahoPopulation) - min(IdahoPopulation)
hist(IdahoPopulation, ylim = c(0, 4), breaks = c(1550000, 1600000, 1650000, 1700000), main = "Boxplot of IdahoPopulation", xlab = "Idaho Population Estimates", las = 1, col = "lightgray")


