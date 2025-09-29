-- Question 1: Find the Total Revenue
SELECT QUANTITY * PRICE AS Total_Revenue
FROM sales;

-- Question 2: Product with the higher amount of sales
SELECT PRODUCT, SUM(QUANTITY) AS Best_Seller
FROM SALES
GROUP BY PRODUCT
ORDER BY Best_Seller DESC
LIMIT 1;

-- Question 3: Average Price per Product
SELECT PRODUCT, AVG(PRICE) AS average_price
FROM SALES
GROUP BY PRODUCT;

-- Question 4: Revenue per Month
SELECT 
YEAR(sale_date) AS year,
MONTH(sale_date) AS month,
SUM(QUANTITY * PRICE) AS revenue
FROM SALES
GROUP BY year, month
ORDER BY year, month;

-- Question 5: Product with the Highest Revenue
SELECT PRODUCT, SUM(QUANTITY*PRICE) AS highest_revenue
FROM SALES
GROUP BY PRODUCT
ORDER BY highest_revenue DESC
LIMIT 1;

-- Question 6: The 3 days with the Highest Revenue
SELECT 
sale_date AS day,
SUM(QUANTITY * PRICE) AS revenue
FROM SALES
GROUP BY day
ORDER BY revenue DESC
LIMIT 3;

-- Question 7: Revenue per Product and Month
SELECT
PRODUCT,
MONTH(sale_date) as month,
SUM(QUANTITY*PRICE) as revenue
FROM SALES
GROUP BY PRODUCT, month
ORDER BY product, month;

-- Question 8: Percentage of each Product in the Total Revenue
SELECT PRODUCT,
SUM(QUANTITY*PRICE) AS revenue,
ROUND(SUM(QUANTITY*PRICE) / (SELECT SUM(QUANTITY*PRICE) FROM SALES) *100, 2) AS revenue_percent
FROM SALES
GROUP BY PRODUCT
ORDER BY revenue_percent;




 



