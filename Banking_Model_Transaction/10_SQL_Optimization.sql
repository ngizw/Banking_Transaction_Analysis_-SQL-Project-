CREATE INDEX idx_transactions_account_date
ON transactions(account_id, transaction_date);
-- This index optimizes queries filtering and ordering by account_id and transaction_date, improving performance for running balance calculations and other related queries.