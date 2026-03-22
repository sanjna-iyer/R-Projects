# College Costs Analysis in R

# Load the required library to read Excel files and clean the data
library("readxl")
data <- read_excel(file.choose())
data
Private <- na.omit(data$Private)

# State the Null and Alternate Hypothesis
# u1= Atlanta hotel price
# u2= Houston hotel price
# Ho: u1 - u2 ≥ 0
# Ha: u1 - u2 < 0
# Calculate mean cost for Private colleges
sample_mean_private <- mean(Private, na.rm = TRUE) 
sample_mean_private
# Calculate mean cost for Public colleges
sample_mean_public <- mean(data$Public, na.rm = TRUE)
sample_mean_public
# Calculate standard deviation for Private colleges
sample_std_private <- sd(Private, na.rm= TRUE)
sample_std_private
# Calculate standard deviation for Public colleges
sample_std_public <- sd(data$Public, na.rm= TRUE)
sample_std_public
# Compute the difference in sample means (Private - Public)
point_est <- mean(Private, na.rm = TRUE) - mean(data$Public)
point_est
# Compute the test statistic
t_test <- t.test(Private, data$Public,  paired = FALSE, alternative ="less", conf.level = 0.95)
print(t_test)



