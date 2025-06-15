show databases;
USE online_sales;
SELECT * FROM onlinesales_data;

SELECT 
   EXTRACT(MONTH FROM STR_TO_DATE(Order_Date, '%d-%m-%Y')) AS order_month,
    COUNT(DISTINCT `Transaction ID`) AS order_volume,
    ROUND(SUM(`Total Revenue`), 2) AS total_revenue
FROM 
    onlinesales_data
WHERE 
    STR_TO_DATE(Order_Date, '%d-%m-%Y') BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY order_month
ORDER BY order_month;
