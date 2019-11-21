#part 2 
#question 1
SELECT product_code, product_name, list_price, discount_percent
FROM products
ORDER BY list_price DESC;

#question 2
SELECT concat(last_name,', ',first_name) as full_name 
FROM customers
WHERE last_name >= 'M%'
ORDER BY last_name ASC; 

#question 3
SELECT product_name, list_price, date_added
FROM products
WHERE list_price BETWEEN '500' and  '2000'
ORDER BY date_added DESC;

#question 4
SELECT product_name, list_price, discount_percent, 
	ROUND((discount_percent / 100) * list_price, 2) as discount_amount, 
    ROUND((discount_percent / 100 * list_price) - list_price, 2) as discount_price
FROM products
ORDER BY discount_price DESC
LIMIT 5;

#question 5
SELECT item_id, item_price, discount_amount, quantity, 
	item_price * quantity as price_total,
    discount_amount * quantity as discount_total,
    ((item_price - discount_amount) * quantity) as item_total
FROM order_items
WHERE ((item_price - discount_amount) * quantity)  > 500
ORDER BY item_total DESC;

#question 6
SELECT order_id, order_date, ship_date
FROM orders
WHERE ship_date is NULL;

#question 7
SELECT NOW() as today_unformatted,
	DATE_FORMAT ( NOW(),'%d-%b-%Y') as today_formatted;

#question 8
SELECT 100 as price, 
	.07 as tax_rate, 
	(100 * .07) as tax_amount, 
	100 + (100 * .07) as total;




