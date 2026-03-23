# R-Projects

Project Overview
This project performs a formal statistical analysis to determine if there is a significant price difference between Private and Public college tuition. Using R, I conducted an independent two-sample t-test to evaluate whether the mean cost of private institutions is statistically lower than public ones based on the provided dataset.
Research Question and Context
The increasing annual cost (including tuition, room, board, books, and fees) to attend college has been widely discussed (Time.com). The following random samples show the annual cost of attending private and public colleges. Data are in thousands of dollars.
(a) Compute the sample mean (in thousand dollars) and sample standard deviation (in thousand dollars) for private colleges.
    Compute the sample mean (in thousand dollars) and sample standard deviation (in thousand dollars) for public colleges.
(b) What is the point estimate (in thousand dollars) of the difference between the two population means?
(c) Develop a 95% confidence interval (in thousand dollars) of the difference between the mean annual cost of attending private and public colleges.

Tech Stack and key details
Language: R
Libraries: readxl (this ensures that R can read data from excel)
Statistical Method: Independent Two-Sample T-Test
Confidence Level: 95% (alpha = 0.05)
Hypothesis Framework
To test the cost relationship, the following hypotheses were defined:
Null Hypothesis # Ho: u1 - u2 ≥ 0 (Private costs are greater than or equal to Public costs)
Alternate Hypothesis # Ha: u1 - u2 < 0 . (Private costs are significantly less than Public costs).

Analysis Workflow
Data Preprocessing or cleaning: Imported Excel data and handled missing values using na.omit() to ensure statistical integrity.
Descriptive Statistics: Calculated Sample Means for both sectors.
Computed Standard Deviations to understand cost variance.
Calculated the Point Estimate (the raw difference between the two means).
Inferential Testing: Executed the t.test() function in R to calculate the T-statistic and P-value.

How to Run
Open the .R file in RStudio.
Ensure the readxl package is installed: install.packages("readxl").
Run the script; a file explorer will prompt you to select your Excel data file.
Select data file college_costs.xlsx after downloading it 
Run each line of the program and look for the output
