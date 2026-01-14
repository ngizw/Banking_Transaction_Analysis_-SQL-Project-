SELECT
    account_id,
    transaction_date,
    transaction_type,
    amount,
    SUM(
        CASE 
            WHEN transaction_type = 'Credit' THEN amount
            ELSE -amount
        END
    ) OVER (
        PARTITION BY account_id
        ORDER BY transaction_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_balance
FROM transactions
ORDER BY account_id, transaction_date;
-- This query calculates the running balance for each account using a window function.