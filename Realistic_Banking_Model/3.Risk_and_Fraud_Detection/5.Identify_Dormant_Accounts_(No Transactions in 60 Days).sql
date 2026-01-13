SELECT 
    a.account_id,
    MAX(t.transaction_date) AS last_transaction_date
FROM accounts a
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.account_id
HAVING MAX(t.transaction_date) < CURRENT_DATE - INTERVAL '60 days'
    OR MAX(t.transaction_date) IS NULL;
