SELECT 
    c.full_name,
    c.risk_category,
    t.amount,
    t.transaction_date
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
WHERE c.risk_category = 'High'
  AND t.transaction_type = 'Debit'
  AND t.amount > 100000;
-- This query identifies high-risk customers with debit transactions exceeding 100,000 units.
