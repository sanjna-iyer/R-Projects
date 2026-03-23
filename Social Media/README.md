Social Media problem
Project Overview:
This project investigates whether social media usage rates vary significantly across different global populations. Using R, I analyzed categorical data from four countries (UK, China, Russia, and the US) to determine if geographic location influences the proportion of social media users.

Problem Statement, clarifications and answers:
Social media is becoming more and more popular around the world. Statista.com provides estimates of the number of social media users in various countries in 2017 as well as the projections for 2022. Assume that the results for surveys in the United Kingdom, China, Russia, and the United States are as follows.
(a) Conduct a hypothesis test to determine whether the proportion of adults using social media is equal for all four countries.
(b) What are the sample proportions for each of the four countries? Which country has the largest proportion of adults using social media?
United States: p4 = 640/1000 = 0.64 (64%), United Kingdom: p1 = 480/800 = 0.60 (60%), Russia: p3 = 343/700 = 0.49 (49%), China: p2 = 215/500 = 0.43 (43%)
(c) Using a 0.05 level of significance, conduct multiple pairwise comparison tests among the four countries. Based on your results, which of the following comparisons show a significant difference in the proportion of adults that use social media?
Conclusion: The United States has the largest proportion of adults using social media at 64%. While the US and UK (60%) are statistically similar, both have significantly higher usage rates than Russia (49%) and China (43%) based on the Marascuillo pairwise comparisons. 

Statistical Methodology: 
This analysis was conducted in two primary phases:
Phase 1:Chi-Squared Test 
Goal: To determine if any difference exists between the four populations. 
p1 = pop. proportion of United Kingdom (UK)
p2 = pop. proportion of China
p3 = pop. proportion of Russia
p4 = pop. proportion of United States (US)

Null Hypothesis- Ho: p1 = p2 = p3 = p4 (Usage proportions are equal across all countries). Alternative Hypothesis- Ha: p1 ≠ p2 ≠ p3 ≠ p4. Result: With a p-value of approximately 0.00 (< 0.05), we rejected the Null Hypothesis. 

Phase 2: Marascuillo Procedure 
Since the Chi-Squared test confirmed a difference exists, I performed the Marascuillo Procedure to compare all pairs of countries (A vs B, A vs C, etc.). This procedure allows for the simultaneous comparison of multiple proportions while controlling for the risk of being wrong.

Tech Stack: 
R Libraries: readxl for data handling
Key Techniques: Cross-tabulation, Chi-Squared Test of Independence, Proportion calculations, and Critical Value (CV_ij) computation.

Key Findings & Business Interpretation:
Western vs. Eastern Trends: The analysis revealed that differences in social media usage are statistically significant when comparing Western countries (US/UK) to Eastern countries.

Intra-Regional Similarity: Comparisons between similar Western regions ( US vs. UK) and Eastern regions (Russia vs. China) showed less statistical variance.

Conclusion: Market entry or digital advertising strategies should be localized by region rather than treated as a uniform global market, as social media penetration is not distributed equally across these nations. 

How to Run:
Reminder for pros and information for newcomers
Ensure you have R or RStudio installed on your computer. You will also need the following R packages:
install.readxl (For importing the Excel data.) 

2. Data Preparation
Download the Social Media.xlsx to your computer and open it via file.choose() when prompted to do so

3. Execution
Open the .R script in your R environment.

Run the script. A file explorer window will automatically pop up—select your Excel data file at this prompt.

4. Reviewing Results
Chi-Squared Test: Check the R console for the p-value to determine if an overall difference exists.

Marascuillo Procedure: Review the generated data frame in the console to see specific "Yes/No" significance markers for each country-to-country comparison to see if social media usage is differnet or similar when comparing those two countries.
