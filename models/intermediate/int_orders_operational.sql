SELECT
orders_id,
date_date,
ROUND((margin + shipping_fee - logcost - ship_cost),2) AS op_margin,
quantity,
revenue,
margin,
FROM
{{ref('int_orders_margin')}}
LEFT JOIN
{{ref('stg_raw__ship')}}
USING (orders_id)
ORDER BY op_margin DESC