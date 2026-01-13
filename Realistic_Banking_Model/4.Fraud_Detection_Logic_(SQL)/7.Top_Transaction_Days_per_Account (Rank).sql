SELECT account_id, transaction_date, total_amount
FROM (
    SELECT
        account_id,
        transaction_date,
        SUM(amount) AS total_amount,
        RANK() OVER (
            PARTITION BY account_id
            ORDER BY SUM(amount) DESC
        ) AS rank_no
    FROM transactions
    GROUP BY account_id, transaction_date
) ranked
WHERE rank_no = 1;
-- This query identifies the top transaction day (by total amount) for each account using a window function.