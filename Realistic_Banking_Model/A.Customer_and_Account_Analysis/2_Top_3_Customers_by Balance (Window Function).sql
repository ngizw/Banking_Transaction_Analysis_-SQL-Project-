SELECT full_name, total_balance
FROM (
    SELECT 
        c.full_name,
        SUM(a.balance) AS total_balance,
        RANK() OVER (ORDER BY SUM(a.balance) DESC) AS rank_no
    FROM customers c
    JOIN accounts a ON c.customer_id = a.customer_id
    GROUP BY c.full_name
) ranked
WHERE rank_no <= 3;
