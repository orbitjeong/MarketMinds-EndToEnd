USE market_minds;

-- Q1: Customer spending overview
SELECT
  COUNT(*) AS total_customers,
  AVG(total_spend) AS avg_spend,
  MIN(total_spend) AS min_spend,
  MAX(total_spend) AS max_spend
FROM marketing_clean_import;

-- Q2: Average total spend by campaign participation
SELECT 'acceptedcmp1' AS campaign, AVG(total_spend) AS avg_spend
FROM marketing_clean_import
WHERE acceptedcmp1 = 1
UNION ALL
SELECT 'acceptedcmp2', AVG(total_spend) FROM marketing_clean_import WHERE acceptedcmp2 = 1
UNION ALL
SELECT 'acceptedcmp3', AVG(total_spend) FROM marketing_clean_import WHERE acceptedcmp3 = 1
UNION ALL
SELECT 'acceptedcmp4', AVG(total_spend) FROM marketing_clean_import WHERE acceptedcmp4 = 1
UNION ALL
SELECT 'acceptedcmp5', AVG(total_spend) FROM marketing_clean_import WHERE acceptedcmp5 = 1
UNION ALL
SELECT 'response (Campaign 6)', AVG(total_spend) FROM marketing_clean_import WHERE response = 1
ORDER BY avg_spend DESC;

-- Insight:
-- Earlier campaigns, particularly Campaign 5, were more effective at engaging high-value customers.
-- The most recent campaign generated broader engagement but lower average spending per customer.

-- Q3: Revenue concentration by customer segment (Top 20% vs Bottom 40%)
WITH ranked_customers AS (
    SELECT
        id,
        total_spend,
        NTILE(5) OVER (ORDER BY total_spend DESC) AS spend_group
    FROM marketing_clean_import
)
SELECT
    spend_group,
    SUM(total_spend) AS total_revenue
FROM ranked_customers
GROUP BY spend_group
ORDER BY spend_group;
