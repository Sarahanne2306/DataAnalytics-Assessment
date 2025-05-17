-- Q3: Inactive Customers - No Transaction in 1 Year
SELECT u.id AS customer_id, u.first_name, u.last_name, u.email
FROM users_customuser u
LEFT JOIN savings_savingsaccount s ON u.id = s.owner_id
LEFT JOIN withdrawals_withdrawal w ON u.id = w.owner_id
WHERE u.id NOT IN (
    SELECT DISTINCT owner_id
    FROM savings_savingsaccount
    WHERE transaction_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
    UNION
    SELECT DISTINCT owner_id
    FROM withdrawals_withdrawal
    WHERE transaction_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
);