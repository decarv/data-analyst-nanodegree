# Prosper's Loan Dataset Exploration

## Dataset

The analysis consisted in the examination of Prosper's loan dataset, a personal loan company that provides a peer-to-peer lending marketplace, with 65056 loans listings in the dataset with 15 variables. The dataset contains data points (attributes) on loan applications, which are used by Prosper to render ratings on people that request a loan. A list of the attributes and their description can be found in [this spreadsheet](https://docs.google.com/spreadsheets/d/1CC0PIpSdnPfxHKPzGcdtetAHGZBHJrxTfZBJ5cdZtvc/edit?usp=sharing).

## Summary of Findings

I limited my analysis to the examination of Prosper's rating system. Specifically how some features present in the dataset may influence the rating given by Prosper to borrowers with no prior loans. Since 2009, Prosper has been using its own rating system, represented in the loans dataset by the variable Prosper Rating, which allegedly has two components: Prosper Score and Credit Score.

Evidently, in the exploration, I found that there was a strong relationship between Prosper Ratings, Prosper Score and Credit Score, but mainly between Prosper Rating and Prosper Score.

I also found that other features, other than just Prosper Score and Credit Score, influences Prosper Ratings. By exploring the variables present in the dataset in relation to Prosper Rating, I could find that Income, Debt, Inquiries, Bankcard Utilization and Delinquencies are features considered in the Prosper rating system.

I could not find out, however, in which moment these features influence Prosper Rating, whether they influence directly Prosper Rating, or they influence the Scores, influencing Prosper Rating indirectly. I found, however, by exploring with multivariate plots, hints that these variables may influence Credit Scores more than they influence Prosper Scores, and this makes sense as Prosper Scores are probably built on top of Prosper loans data, related to loans payments and delinquencies.

## Key Insights for Presentation

For the presentation, I focus on the variables that affect Prosper Rating system in some way. I start by introducing the dataset and the main questions I intend to present to the audience.

After that, I introduce the concepts of each variable and its distributions and following on how they are distributed in relation to Prosper Rating. For this step, I used violin plots and box plots, as I found them to best represent the quantitative variables plotted with the categorical Prosper Rating.

At last, I show how the Rating and the Scores are influenced by each of the variables.

#### Resources
For this project, I used as a resource the libraries' documentations, stackoverflow, and an article written by Lorna Yen, [Exploration of Loan Dataset from Prosper
](http://rpubs.com/onpillow/446310).