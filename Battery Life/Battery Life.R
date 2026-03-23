# Phone battery life 
library("readxl")
data <- read_excel(file.choose())
data

# var_1 <- phone usage by talking
# var_2 <- phone usage by internet

# null and alternate hypothesis
# H0: var_1 ≤ var_2
# Ha: var_1 > var_2

# Clean the data remove N/As
clean_data <- na.omit(data)
clean_data
# Find the standard deviation of the data
round(sd(clean_data$Talking),2)
round(sd(clean_data$Internet),2)

# Find the sample mean
sam_mean1 <- mean(clean_data$Talking)
sam_mean1
sam_mean2 <- mean(clean_data$Internet)
sam_mean2

# Find the sample variance
sam_var1 <- var(clean_data$Talking)
sam_var1
sam_var2 <- var(clean_data$Internet)
sam_var2

# Perform F- test
f_test <- sam_var1/ sam_var2
f_test

var.test(clean_data$Talking, clean_data$Internet, alternative = "greater")
var.test

# Find p-value
# df1 is (n-1) for the top number, df2 is (n-1) for the bottom number
p_val <- pf(f_test, df1 = 11, df2 = 10, lower.tail = FALSE)
p_val
round(p_val,4)

# Business Conclusion
# 0.0944 > 0.05, do not reject H0, there is not significant evidence to state that pop variance in battery life is greater for talk time