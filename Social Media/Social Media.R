# Three or more populations testing
#Step 1: Load R packages
library("readxl")
library(ggplot2)

# Step 2: Import data into R
data <- read_excel(file.choose())
data

# Step 3: Compute the cross-tabulation of data
xtab <- table(data$Country, data$`Use Social Media?`)
xtab

# Step 4: State the null and alternate hypothesis
# p1 = pop. proportion of United Kingdom (UK)
# p2 = pop. proportion of China
# p3 = pop. proportion of Russia
# p4 = pop. proportion of United States (US)

# Ho: p1 = p2 = p3 = p4
# Ha: p1 ≠ p2 ≠ p3 ≠ p4

# Step 5: Compute the test statistic
chi_test <- chisq.test(xtab)
chi_test
round(2.2e-16,4)

# Step 6: Business Interpretation
# 0.00 ≤ 0.05 ; Reject Ho. We can conclude that there is a difference in population use of social media.

# Step 7: Compare countries to see which country has most social media usage using marascuillo procedure
x1= 480 # no.of social media users for UK
n1= 800 # total sample population of social media users in the UK
x2= 215 # no.of social media users for China
n2= 500 # total sample population of social media users in China
x3= 343 # no.of social media users for Russia
n3= 700 # total sample population of social media users in Russia
x4= 640 # no.of social media users for US
n4= 1000 # total sample population of social media users in the US

p1= x1/n1 # population proportion for social media users in the UK, A
p2= x2/n2 # population proportion for social media users in China, B
p3= x3/n3 # population proportion for social media users in Russia, C
p4= x4/n4 # population proportion for social media users in the US, D

# Comparisions between 
# A vs B
# A vs C
# A vs D
# B vs C
# B vs D 
# C vs D

comparisions <- data.frame(
  group1 = c("A","A","A","B","B","C"),
  group2 = c("B","C","D","C","D","D"),
  p_i = c(0.6, 0.6, 0.6, 0.43, 0.43, 0.49),
  p_j = c(0.43, 0.49 ,0.64 ,0.49 ,0.64 ,0.64),
  n_i = c(800, 800, 800, 500, 500, 700),
  n_j = c(500, 700, 1000, 700, 1000, 1000)
)

# Step 8: Define chi squared critical values for df= 3, and critical value = 0.05
chi_crit <- qchisq(0.05, df= 3, lower.tail = FALSE)
chi_crit

# Step 9: Compute CV_ij
comparisions$CV_ij <- sqrt(chi_crit * (comparisions$p_i * (1- comparisions$p_i)/ comparisions$n_i + 
                                         comparisions$p_j * (1- comparisions$p_j)/ comparisions$n_j))

# Step 10: Compute the absolute differences between the proportions 
comparisions$differences <- abs(comparisions$p_i - comparisions$p_j)

# Step 11: Compare the differences with CV_ij
comparisions$significant <- ifelse(comparisions$differences > comparisions$CV_ij, "Yes", "No")
comparisions$significant
# Step 12: Print the results
print(comparisions$significant)

# Step 13: Come up with final business conclusion
# When comparing Eastern countries with Western countries, social media usage is statistically significant,
# compared to comparing between Western countries like the US and UK.