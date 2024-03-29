-- Create a query that joins related tables together
SELECT products.product_id,
	products.name AS product_name,
	products.manufacturing_cost,
	categories.name AS category_name,
	categories.market
FROM manufacturing.products 
JOIN manufacturing.categories
ON products.category_id = categories.category_id
WHERE market = 'industrial';