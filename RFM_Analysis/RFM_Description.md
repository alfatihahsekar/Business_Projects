# Summary
This project focused on creating monthly retention cohorts of The Look E-Commerce (fictitious clothing site in Google BigQuery) in 2019 - 2022. I created monthly retention cohorts based on the date that a user purchased a product and then analyze how many of them (%) came back for the following month. After that, I created hypotheses for the analysis and suggested a business recommendation based on that.

# Dataset
The dataset used is The Look E-Commerce (fictitious clothing site in Google Bigquery) in 2019 - 2022. https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook-ecommerce?q=search&referrer=search&project=sincere-torch-350709

# Project Goals
Creating monthly retention cohorts of The Look E-Commerce and analyzing how many of them was coming back for the following month in 2019 - 2022.

# Methodology
Data Preparation & Cleaning
Query process was done on Google BigQuery, https://console.cloud.google.com/bigquery?sq=630202522940:859477d072be46839e0d7c85dc88f56f

image image image image

# Data Analysis & Visualization
The result of the query was being processed on Google Sheet for further analysis https://docs.google.com/spreadsheets/d/12KKWA1zgr-6FSK8dLNrhgOQG6Xv_yECMdqzlCNpDmZQ/edit?usp=sharing

The query resulted a monthly retention cohorts based upon the first date of a user’s purchase and the following months in 2019 - 2022. However for the further analysis I analyzed the time frame of the latest 1 year (2021-2022) to measure their latest user engagement for the next marketing strategy.

image

The total user in each cohort month showed an upward trend in a year (number of user increasing over time).

image

The retention curve showed the retention of the cohorts over time, out of all new users during the time range (48131 users), 10.18% were retained on 1 month after, 5.66% on 6 months after, and 2.44% on 12 months after.

image

Overall, in the time frame of 6 months, the user who came back to purchase in the marketplace was decreasing around 50%.

Hypothesis 1 Decreasing activity in Active users in the same cohort within a year
image image image

The result of the query was being processed on Google Sheet for further analysis https://docs.google.com/spreadsheets/d/1d15bXXdxKLDDqXZuK9tfsokh5YXADQ6Yt1Sov6FqPKc/edit?usp=sharing

image image image

The total of active users in each cohort month showed an upward exponential trend in a year because of the high rise up in the 12 months after. The retention curve showed the retention of the cohorts over time, out of all new active users during the time range (6549 users), 21.33% were retained on 1 month after, 9.70% on 6 months after, and 4.26% on 12 months after. In summary, in the time frame of 6 months, the active user who came back to purchase in the marketplace is decreasing around 50% (the same as our main cohort analysis)

Hypothesis 2 Decreasing activity in non-active users in the same cohort within a year
image image image

The result of the query was being processed on Google Sheet for further analysis https://docs.google.com/spreadsheets/d/1_W1xcYUbOR_nML_cMExZgb0c5htS-VZ4AbhT8t9DegA/edit?usp=sharing

image image image

The total of non-active users in each cohort month showed an upward trend until 11 months after and a large drop occurs in the 12 months after. The retention curve showed the retention of the cohorts over time, out of all new non-active users during the time range (41582 users), 8.97% were retained on 1 month after, 5.42% on 6 months after, and 2.37% on 12 months after.

Hypothesis 3 The total user who completed their orders has decreased within a year
image

The result of the query was being processed on Google Sheet for further analysis https://docs.google.com/spreadsheets/d/1P2FocJl-1IyWNqWgXBsx_AyUxFAjpb8Y8z90g5rCIGI/edit?usp=sharing The percentage of total user who completed their orders within a year showed stationary trend and tend to slightly showing an uptrend in 2022. So, the total user who completed their order hasn’t decreased in a year.

image

# Insight & Recommendation
As the overall of total user in each cohort month was increasing over time within the year, we can conclude that they had a good onboarding experience. However, as the retention curve indicates that users weren't getting quickly engaged to the marketplace, resulting in drop-offs. TheLook eCommerce needed to improve the user’s engagement as quickly as possible, so it could boost the retention.
