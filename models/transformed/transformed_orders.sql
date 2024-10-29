
SELECT
  o.order_id,
  o.order_date,
  o.total_amount,
  c.customer_id,
  c.full_name AS customer_name
FROM {{ source('raw', 'raw_orders') }} o
JOIN {{ ref('transformed_customers') }} c ON o.customer_id = c.customer_id
