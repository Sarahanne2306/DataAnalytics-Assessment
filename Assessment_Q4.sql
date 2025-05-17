-- Q4: Estimate Customer Lifetime Value
SELECT u.id AS customer_id, u.first_name, u.last_name,
       ROUND(SUM(s.amount) - IFNULL(SUM(w.amount_withdrawn), 0), 2) AS lifetime_value
FROM users_customuser u
LEFT JOIN savings_savingsaccount s ON u.id = s.owner_id
LEFT JOIN withdrawals_withdrawal w ON u.id = w.owner_id
GROUP BY u.id, u.first_name, u.last_name
ORDER BY lifetime_value DESC;