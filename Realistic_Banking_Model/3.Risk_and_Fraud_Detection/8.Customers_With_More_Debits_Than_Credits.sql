SELECT 
    c.full_name,
    SUM(CASE WHEN t.transaction_type = 'Debit' THEN t.amount ELSE 0 END) AS total_debit,
    SUM(CASE WHEN t.transaction_type = 'Credit' THEN t.amount ELSE 0 END) AS total_credit
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.full_name
HAVING 
    SUM(CASE WHEN t.transaction_type = 'Debit' THEN t.amount ELSE 0 END) >
    SUM(CASE WHEN t.transaction_type = 'Credit' THEN t.amount ELSE 0 END);
-- This query identifies customers whose total debit transactions exceed their total credit transactions by aggregating transaction amounts based on type.