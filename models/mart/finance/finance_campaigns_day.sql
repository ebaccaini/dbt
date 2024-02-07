SELECT *,
ROUND((op_margin - ads_cost),2) AS ads_margin
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
USING (date_date)
ORDER BY date_date DESC