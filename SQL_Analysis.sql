-- ==========================================
-- PROJECT 3 : SQL DATA ANALYSIS
-- ==========================================

-- 1. View Complete Dataset

SELECT *
FROM orders;


-- 2. Total Number of Orders

SELECT COUNT(*) AS Total_Orders
FROM orders;


-- 3. Total Revenue

SELECT SUM(TotalPrice) AS Total_Revenue
FROM orders;


-- 4. Average Order Value

SELECT AVG(TotalPrice) AS Average_Order_Value
FROM orders;


-- 5. Orders by Product

SELECT Product,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY Product
ORDER BY Total_Orders DESC;


-- 6. Revenue by Product

SELECT Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC;


-- 7. Orders by Payment Method

SELECT PaymentMethod,
COUNT(*) AS Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Orders DESC;


-- 8. Revenue by Payment Method

SELECT PaymentMethod,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY PaymentMethod
ORDER BY Revenue DESC;


-- 9. Orders by Order Status

SELECT OrderStatus,
COUNT(*) AS Orders
FROM orders
GROUP BY OrderStatus
ORDER BY Orders DESC;


-- 10. Coupon Usage

SELECT CouponCode,
COUNT(*) AS Usage_Count
FROM orders
GROUP BY CouponCode
ORDER BY Usage_Count DESC;


-- 11. Revenue by Referral Source

SELECT ReferralSource,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY ReferralSource
ORDER BY Revenue DESC;


-- 12. Top 10 Highest Value Orders

SELECT OrderID,
CustomerID,
Product,
TotalPrice
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;


-- 13. Total Quantity Sold by Product

SELECT Product,
SUM(Quantity) AS Quantity_Sold
FROM orders
GROUP BY Product
ORDER BY Quantity_Sold DESC;


-- 14. Average Revenue per Product

SELECT Product,
AVG(TotalPrice) AS Average_Revenue
FROM orders
GROUP BY Product
ORDER BY Average_Revenue DESC;


-- 15. Products Generating More Than ₹10,000 Revenue

SELECT Product,
SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
HAVING SUM(TotalPrice) > 10000
ORDER BY Revenue DESC;


-- 16. Customers with Multiple Orders

SELECT CustomerID,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY CustomerID
HAVING COUNT(*) > 1
ORDER BY Total_Orders DESC;


-- 17. Orders Greater Than ₹500

SELECT *
FROM orders
WHERE TotalPrice > 500
ORDER BY TotalPrice DESC;


-- 18. Delivered Orders

SELECT *
FROM orders
WHERE OrderStatus='Delivered';


-- 19. Orders Without Coupon

SELECT *
FROM orders
WHERE CouponCode='No Coupon';


-- 20. Orders Paid Using UPI

SELECT *
FROM orders
WHERE PaymentMethod='UPI';