
SELECT
  customer_id,
  CONCAT(first_name, ' ', last_name) AS full_name,
  email,
  created_at AS customer_since
FROM raw_customers
WHERE email IS NOT NULL
