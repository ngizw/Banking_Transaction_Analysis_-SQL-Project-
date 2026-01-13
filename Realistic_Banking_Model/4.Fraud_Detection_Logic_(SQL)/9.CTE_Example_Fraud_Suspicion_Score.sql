WITH transaction_summary AS (
    SELECT
        a.customer_id,
        COUNT(*) AS txn_count,
        SUM(CASE WHEN t.transaction_type = 'Debit' THEN t.amount ELSE 0 END) AS total_debit
    FROM transactions t
    JOIN accounts a ON t.account_id = a.account_id
    GROUP BY a.customer_id
)
SELECT
    c.full_name,
    ts.txn_count,
    ts.total_debit,
    CASE
        WHEN ts.total_debit > 300000 AND ts.txn_count > 3 THEN 'High Risk'
        WHEN ts.total_debit > 150000 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS fraud_risk_score
FROM transaction_summary ts
JOIN customers c ON ts.customer_id = c.customer_id;
-- This query calculates a fraud suspicion score for each customer based on their total debit transactions and the number of transactions they have made.