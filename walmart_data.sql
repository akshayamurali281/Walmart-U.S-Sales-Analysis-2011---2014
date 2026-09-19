SELECT * FROM walmart_4.walmart_combined;
use walmart_4;
select * from walmart_combined;

SELECT COUNT(`Customer Name`) AS Total_No_of_customers,
       COUNT(DISTINCT `ORDER ID`) AS Unique_order_ID
FROM walmart_combined;

SELECT COUNT(DISTINCT State) AS Total_states,
       COUNT(DISTINCT City) AS Total_Cities
FROM walmart_combined;

SELECT ROUND(SUM(SALES) ,2) AS Total_Sales,
       SUM(PROFIT) AS Total_profit,
       SUM(`Cost per product`) AS Total_cost
FROM walmart_combined;

SELECT 
YEAR(order_date_clean) AS Year,
ROUND(SUM(Sales), 2) AS Total_Sales
FROM walmart_combined
GROUP BY YEAR(order_date_clean)
ORDER BY  Total_Sales ASC;



 