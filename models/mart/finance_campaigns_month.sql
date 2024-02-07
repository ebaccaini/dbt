SELECT
DATE_TRUNC(date_date, month) AS month,
ROUND(SUM(ads_margin),2) AS ads_margin,
ROUND(SUM(ads_cost),2) AS ads_cost,
ROUND(SUM(ads_impression),2) AS ads_impression,
ROUND(SUM(ads_clicks),2) AS ads_clicks,
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(op_margin),2) AS op_margin,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(nb_transactions),2) AS nb_transactions,
FROM {{ref("finance_campaigns_day")}}
GROUP BY month