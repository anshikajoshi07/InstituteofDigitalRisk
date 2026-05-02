
-- 1
SELECT DISTINCT c *
FROM Customers c
JOIN Oders 0 ON c.Customer_id =0.customer_id;

-- 2
SELECT c.name, Count(o.order_id) AS total_orders
From Customers c
LEFT JOIN Orders o ON c.customer_id =o.customer_id
GROUP BY c.customer_id ,c.name;

-- 3
SELECT p.product_id, p.category,
  SUM(oi.quantity * p.price) AS total_revenue
FROM products p
JOIN oder_items oi ON p.product_id -oi.product_id
GROUP BY product_id , p.category;

-- 4
SELECT p.product_id, SUM(oi.quantity) AS total_quantity
FROM products p 
JOIN Order_item oi ON p.product_id =oi.product_id
GROUP BY p.product_id
ORDER BY total_quantity DESC
LIMIT 1;

-- 7 
SELECT C*
FROM Customers c 
LEFT JOIN Oders o ON customer_id =0.customer_id
WHERE o.order_id IS NULL;

--9
SELECT c.customer_id, c.name , COUNT (o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id =o.customer_id
GROUP BY c.customer_id,c.name
HAVING COUNT (o.order_id)>1;