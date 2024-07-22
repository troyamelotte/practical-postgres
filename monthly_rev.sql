
WITH product_revenue AS (
	SELECT 
		p.name AS product_name,
		DATE_TRUNC('month', o.created_at) AS product_revenue_month,
		SUM(p.price_in_cents * op.quantity) AS product_revenue
		FROM "order" o
		JOIN order_product op ON op.order_id = o.id
		JOIN product p ON p.id = op.product_id
		GROUP BY p.name, DATE_TRUNC('month', o.created_at)
),
monthly_revenue AS (
	SELECT 
		DATE_TRUNC('month', o.created_at) AS revenue_month, 
		SUM(p.price_in_cents * op.quantity) AS total_revenue FROM "order" o
		JOIN order_product op ON op.order_id = o.id
		JOIN product p ON p.id = op.product_id
		GROUP BY DATE_TRUNC('month', o.created_at)
)
 SELECT 
 	mr.revenue_month, 
 	(
	 	SELECT pr.product_name 
		 	FROM product_revenue pr 
		 	WHERE pr.product_revenue_month = mr.revenue_month
		 	ORDER BY pr.product_revenue
		 	LIMIT 1
 	) AS best_selling_product,
 	(
 		SELECT '$' || ROUND(pr.product_revenue::NUMERIC / 100::NUMERIC, 2)
		 	FROM product_revenue pr 
		 	WHERE pr.product_revenue_month = mr.revenue_month
		 	ORDER BY pr.product_revenue
		 	LIMIT 1
 	) AS best_selling_product_revenue,
 	ROUND(mr.total_revenue::NUMERIC / 100::NUMERIC, 2)
FROM monthly_revenue mr;
