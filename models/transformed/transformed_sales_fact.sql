
SELECT
  oi.order_id,
  p.product_id,
  p.product_name,
  SUM(oi.quantity * oi.price) AS total_revenue,
  SUM(oi.quantity) AS total_quantity
FROM {{ source('raw', 'raw_order_items') }} oi
JOIN {{ ref('transformed_products') }} p ON oi.product_id = p.product_id
GROUP BY oi.order_id, p.product_id, p.product_name
