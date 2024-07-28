# Summary
This project aimed to perform RFM analysis on an e-commerce dataset to segment customers based on their purchasing behavior. The analysis focused on identifying high-value customers, at-risk customers, and potential opportunities for personalized marketing campaigns. E-commerce companies want to segment customers. Marketing strategy will be determined according to these segments. The company listed sales between 2009 and 2011 to categorize customers. Additionally, RFM (Recency, Frequency, Monetary) analysis was performed to develop customer segments and optimize engagement strategies.

# Dataset
The dataset used for this analysis is the Online Retail II data set, which contains transactions from a UK-based, non-store online retailer between 01/12/2009 and 09/12/2011. The company primarily sells unique, all-occasion giftware, with many customers being wholesalers.
1. InvoiceNo: Invoice number.
2. StockCode: Product code.
3. Description: Product name.
4. Quantity: Quantity of each product per transaction.
5. InvoiceDate: Date and time of the transaction.
6. UnitPrice: Price per unit in sterling (£).
7. CustomerID: Customer number.
8. Country: Country of the customer.
[Link to dataset](https://www.kaggle.com/datasets/ilkeryildiz/online-retail-listing)

# Project Goals
The goal was to segment the customers based on their purchasing behavior and provide actionable insights for marketing strategies. This involved defining customer behaviors, grouping them into clusters, and developing tailored sales and marketing techniques.

# Methodology

**Data Preparation & Cleaning**
The process was done on Google Colaboratory.
1. Loaded and cleaned the dataset to handle missing values and correct data types.
2. Filtered out cancellations and non-relevant transactions.
3. Calculated the Recency, Frequency, and Monetary values for each customer.
   ```
   # Define Scoring criteria
  recency_scores = [5,4,3,2,1] # high score for low recency
  frequency_scores = [1,2,3,4,5] # high score for high frequency
  monetary_scores = [1,2,3,4,5] # high score for high monetary

  df['Recency_scores'] = df['Recency_scores'].astype(int)
  df['Frequency_scores'] = df['Frequency_scores'].astype(int)
  df['Monetary_scores'] = df['Monetary_scores'].astype(int)
  
  # calculate RFM by combining individual R, F, M scores
  df['RFM_score'] = df['Recency_scores'] + df['Frequency_scores'] + df['Monetary_scores']
  
  # RFM Segment
  labels = ['Low-Value', 'Mid-Value', 'High-Value']
  df['RFM_segments'] = pd.qcut(df['RFM_score'], q=3, labels=labels)
  
  # Calculate RFM Scores
  df['Recency_scores'] = pd.cut(df['Recency'], bins=5, labels=recency_scores)
  df['Frequency_scores'] = pd.cut(df['Frequency'], bins=5, labels=frequency_scores)
  df['Monetary_scores'] = pd.cut(df['Monetary'], bins=5, labels=monetary_scores)
  ```
**RFM Calculation**
The process was done on Google Colaboratory.
1. Recency: Days since the customer's last purchase.
2. Frequency: Total number of purchases by the customer.
3. Monetary: Total amount spent by the customer.

**RFM Segmentation**
1. Segmented customers into different RFM categories using quintiles.
2. Assigned RFM scores to each customer based on their Recency, Frequency, and Monetary values.
3. Grouped customers into segments like "Champions", "Potential Loyalist", "At-Risk Customers", "Can't lost Customer", "Lost Customer", based on their RFM scores.
![image](https://github.com/user-attachments/assets/46a5146e-32ed-494c-9bc1-f51e48680d7e)

**Data Analysis & Visualization**
1. Created various visualizations to explore the distribution of RFM values among different customer segments.
2. Analyzed the retention rate of each segment to understand customer loyalty and engagement.

**Insights & Recommendations**
![image](https://github.com/user-attachments/assets/727e6fd3-7611-462a-87b8-1820e2f3a1e0)
1. Champions: Recommend focusing on retention strategies and exclusive offers. Engage with personalized offers and rewards to maintain loyalty
2. Potential Loyalist: Recommend loyalty programs and personalized offers. Use targeted marketing campaigns to convert potential high-value customers.
3. At-Risk Customers: Recommend re-engagement campaigns and targeted promotions. 
4. Can't Lost Customers: Recommend onboarding programs and introductory offers. Implement re-engagement campaigns to bring them back.
5. Lost Customers: Recommend reactivation campaigns and feedback collection.


**Conclusion**
The RFM analysis provided valuable insights into customer behavior, allowing the e-commerce company to tailor marketing strategies effectively. By focusing on customer segments with specific characteristics, the company can enhance customer satisfaction, increase retention rates, and drive sales growth
