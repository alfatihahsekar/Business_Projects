# Summary

This project focused on creating monthly retention cohorts for The Look E-Commerce (a fictitious clothing site on Google BigQuery) for the years 2019 to 2022. The cohorts were created based on the dates users made purchases, and the analysis tracked how many of these users (%) returned in the following months. Hypotheses were formulated from the analysis, and business recommendations were provided based on the findings. Additionally, RFM (Recency, Frequency, Monetary) analysis was performed to develop customer segments and optimize engagement strategies.

# Dataset

The dataset used is from The Look E-Commerce (a fictitious clothing site on Google BigQuery) covering 2019 to 2022. [Link to dataset](https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook-ecommerce?q=search&referrer=search&project=sincere-torch-350709)

# Project Goals

- Create monthly retention cohorts for The Look E-Commerce.
- Analyze how many users returned in the following months from 2019 to 2022.
- Perform RFM analysis to segment customers based on their RFM scores.
- Provide insights into customer behavior and identify high-value customers, at-risk customers, and opportunities for personalized marketing campaigns.

# Methodology

**Data Preparation & Cleaning**
The query process was done on Google BigQuery. [Link to query](https://console.cloud.google.com/bigquery?sq=630202522940:859477d072be46839e0d7c85dc88f56f)

**Data Analysis & Visualization**
The results of the query were processed in Google Sheets for further analysis. [Link to Google Sheet](https://docs.google.com/spreadsheets/d/12KKWA1zgr-6FSK8dLNrhgOQG6Xv_yECMdqzlCNpDmZQ/edit?usp=sharing)

The query results showed monthly retention cohorts based on the initial purchase date and subsequent months from 2019 to 2022. For deeper analysis, the latest year (2021-2022) was examined to assess user engagement for future marketing strategies.

![Image of trend analysis](image)

The total number of users in each cohort month showed an upward trend throughout the year, indicating an increase in users over time.

![Image of retention curve](image)

The retention curve displayed the retention rates over time. Of all new users during the period (48,131 users), 10.18% were retained one month later, 5.66% six months later, and 2.44% twelve months later.

![Image of retention analysis](image)

Overall, within six months, the number of users returning to the marketplace decreased by approximately 50%.

### Hypothesis 1: Decreasing Activity in Active Users Within the Same Cohort Over a Year
The results were further analyzed in Google Sheets. [Link to Google Sheet](https://docs.google.com/spreadsheets/d/1d15bXXdxKLDDqXZuK9tfsokh5YXADQ6Yt1Sov6FqPKc/edit?usp=sharing)

![Image of active user analysis](image)

The total number of active users in each cohort month showed an upward trend due to a significant increase twelve months later. The retention curve indicated that of all new active users (6,549 users), 21.33% were retained after one month, 9.70% after six months, and 4.26% after twelve months. This shows a similar 50% decrease in active user retention over six months.

### Hypothesis 2: Decreasing Activity in Non-Active Users Within the Same Cohort Over a Year
Further analysis was conducted. [Link to Google Sheet](https://docs.google.com/spreadsheets/d/1_W1xcYUbOR_nML_cMExZgb0c5htS-VZ4AbhT8t9DegA/edit?usp=sharing)

![Image of non-active user analysis](image)

The total number of non-active users in each cohort month showed an upward trend until eleven months later, followed by a significant drop in the twelfth month. Of all new non-active users (41,582 users), 8.97% were retained after one month, 5.42% after six months, and 2.37% after twelve months.

### Hypothesis 3: The Total Number of Users Completing Orders Has Decreased Within a Year
Further analysis was performed. [Link to Google Sheet](https://docs.google.com/spreadsheets/d/1P2FocJl-1IyWNqWgXBsx_AyUxFAjpb8Y8z90g5rCIGI/edit?usp=sharing)

![Image of order completion analysis](image)

The percentage of users completing their orders showed a stationary trend with a slight uptrend in 2022, indicating that the total number of users completing their orders did not decrease over the year.

![Image of order completion trend](image)

# RFM Analysis

RFM analysis is a powerful technique used to better understand customer behavior and optimize engagement strategies. It revolves around three key dimensions: recency, frequency, and monetary value. These dimensions capture essential aspects of customer transactions, providing valuable information for segmentation and personalized marketing campaigns.

**Recency:** Measures how recently a customer made a purchase.
**Frequency:** Measures how often a customer makes a purchase.
**Monetary:** Measures how much money a customer spends on purchases.

The given dataset contains customer transaction data including customer ID, purchase date, transaction amount, product information, ID command, and location. The platform aims to leverage RFM analysis to segment customers and optimize customer engagement strategies.

### RFM Scores and Segmentation

Customers were segmented based on their RFM scores to identify high-value customers, at-risk customers, and opportunities for personalized marketing campaigns. 

# Insight & Recommendation

The total number of users in each cohort month increased over time, suggesting a good onboarding experience. However, the retention curve indicates that users were not engaging with the marketplace quickly enough, leading to drop-offs. To boost retention, The Look E-Commerce needs to improve user engagement as soon as possible.

Based on the RFM analysis:
- **High-Value Customers:** Engage with personalized offers and rewards to maintain loyalty.
- **At-Risk Customers:** Implement re-engagement campaigns to bring them back.
- **Opportunities:** Use targeted marketing campaigns to convert potential high-value customers.
