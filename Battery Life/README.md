Battery Life problem
Project Overview:
This project examines the consistency of mobile phone battery life across two different usage types: Talk Time and Internet Usage. Instead of comparing average battery life, this study focuses on Population Variance to determine which usage type has more unpredictable power consumption.
Problem Statement:
Battery life is an important issue for many smartphone owners. Public health studies have examined "low-battery anxiety" and acute anxiety called nomophobia that results when a smartphone user's phone battery charge runs low and then dies.† Battery life between charges for the Samsung Galaxy S9 averages 31 hours when the primary use is talk time and 10 hours when the primary use is Internet applications. Because the mean hours for talk time usage is greater than the mean hours for Internet usage, the question was raised as to whether the variance in hours of usage is also greater when the primary use is talk time. Sample data showing battery life between charges for the two applications follows.
(a) Formulate hypotheses about the two population variances that can be used to determine if the population variance in battery life is greater for the talk time application.
(b) What are the standard deviations of battery life for the two samples?
(c) Conduct the hypothesis test and compute the p-value. Using a 0.05 level of significance, what is your conclusion?
Statistical Methodology: 
To compare the "spread" or "risk" of battery drainage, I employed an F-Test for Equality of Variances.
1. Hypothesis Framework:
   var_1 = phone usage by talking
   var_2 = phone usage by internet
2. Null Hypothesis H0: var_1 ≤ var_2 (Talk time variance is less than or equal to internet usage variance).
   Alternative Hypothesis Ha: var_1 > var_2 (Talk time variance is significantly greater).
   Analytical Tools:
   Language: R
   Core Functions: var.test(), pf() (Probability Function for F-distribution), and na.omit() for data cleaning.
   Metric: F-statistic calculated as the ratio of sample variances (S^2_{1} / S^2_{2}).
   Implementation and Workflow:
   Data Cleaning: Utilized na.omit() to remove incomplete records, ensuring the F-test denominator and numerator were calculated from clean data.
   Descriptive Statistics: Computed Standard Deviation, Sample Mean, and Variance for both usage categories.
   Inferential Testing: Performed an automated var.test in R.Manually verified the P-value using the F-distribution function (pf) with specific degrees of freedom (df_1 = 11, df_2 = 10).
   
   Key Findings & Business Conclusion:
   P-Value Result: 0.0944
   Decision: Fail to Reject H0 (0.0944 > 0.05).
   Conclusion: There is not enough statistical evidence to conclude that talk time battery life is more volatile (has higher variance) than internet usage battery life. For a manufacturer, this suggests that battery drainage is equally or unpredictable) across both activities.
