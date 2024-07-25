SELECT * 
FROM `retail.rfm` 
LIMIT 50;


SELECT MAX(PurchaseDate)
FROM `retail.rfm`; 
-- 2023-06-10 

--Recent Purchase
SELECT
  CustomerID,
  MAX(PurchaseDate) as recent
FROM `retail.rfm` 
GROUP BY CustomerID;
-
--
---
----
-----RFM score
----
---
--
WITH base AS (
  SELECT
    CustomerID,
    MAX(PurchaseDate) AS recent,
    DATE_DIFF('2023-06-11', MAX(PurchaseDate), DAY) AS recency_score,
    COUNT(OrderID) as frequency_score,
    SUM(TransactionAmount) as monetary_score
  FROM
    `retail.rfm`
  GROUP BY
    CustomerID
),
--make it into 5 buckets
rfm_scores AS(
SELECT 
  CustomerID,
  base.recency_score,
  base.frequency_score,
  base.monetary_score,
  NTILE(5) OVER (ORDER BY recency_score DESC) as R, 
  NTILE(5) OVER (ORDER BY frequency_score ASC) as F, 
  NTILE(5) OVER (ORDER BY monetary_score ASC) as M, 
FROM base 
)
SELECT 
  CustomerID,
  CONCAT(R,F,M) as RFM_score
FROM rfm_scores;
