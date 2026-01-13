CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    risk_category VARCHAR(20)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(15,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount DECIMAL(15,2),
    transaction_type VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

CREATE TABLE branches (
    branch_id INT PRIMARY KEY,
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Rungambwa Richard', 35, 'Kigali', 'Low'),
(2, 'Niyonizera Anelly', 28, 'Rusizi', 'Medium'),
(3, 'Wimana Florien', 45, 'Rubavu', 'High'),
(4, 'Bahire Anick', 32, 'Huye', 'Low'),
(5, 'Habby Jean', 40, 'Musanz', 'Medium');


INSERT INTO accounts VALUES
(101, 1, 'Savings', 500000),
(102, 2, 'Current', 250000),
(103, 3, 'Savings', 1000000),
(104, 4, 'Savings', 300000),
(105, 5, 'Current', 150000);

INSERT INTO transactions VALUES
(1001, 101, '2024-01-10', 20000, 'Debit'),
(1002, 101, '2024-01-15', 50000, 'Credit'),
(1003, 102, '2024-01-20', 10000, 'Debit'),
(1004, 103, '2024-02-05', 200000, 'Debit'),
(1005, 103, '2024-02-10', 300000, 'Credit'),
(1006, 104, '2024-02-18', 15000, 'Debit'),
(1007, 105, '2024-03-01', 5000, 'Debit'),
(1008, 105, '2024-03-10', 25000, 'Credit');


