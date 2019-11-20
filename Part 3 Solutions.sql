#part 3
#question 1
SELECT c.category_name, p.product_name, p.list_price
FROM categories c
JOIN products p 
WHERE c.category_id = p.category_id
ORDER BY c.category_name, p.product_name;

#question 2
SELECT c.first_name, c.last_name, c.email_address, a.line1, a.city, a.state, a.zip_code  
FROM customers c
JOIN addresses a
ON c.customer_id = a.customer_id
WHERE c.email_address = 'allan.sherwood@yahoo.com';

#question 3
SELECT first_name, last_name, line1, city, state, zip_code  
FROM customers c
JOIN addresses a
ON c.customer_id = a.customer_id
WHERE c.shipping_address_id = a.address_id;

#question 4
SELECT c.last_name, c.first_name, o.order_date, p.product_name, oi.item_price, oi.discount_amount, oi.quantity
FROM customers c
JOIN orders o
On c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id
ORDER BY last_name, order_date, product_name;

#question 5
SELECT p1.product_name, p1.list_price
FROM products p1
JOIN products p2 ON
p1.product_id <> p2.product_id
AND
p1.list_price = p2.list_price;

#question 6
SELECT category_name, product_id
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
WHERE product_id is NULL;

#question 7
SELECT 'SHIPPED' as ship_status, order_id, order_date
FROM orders
WHERE ship_date is NOT NULL
UNION
SELECT 'NOT SHIPPED' , order_id, order_date
FROM orders
WHERE ship_date is NULL
ORDER BY order_date; 





