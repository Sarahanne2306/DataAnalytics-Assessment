-- Q2: Customer Segmentation Based on Savings Frequency
SELECT u.id AS customer_id, u.first_name, u.last_name, COUNT(s.id) AS total_transactions,
       CASE 
           WHEN COUNT(s.id) >= 12 THEN 'Monthly Saver'
           WHEN COUNT(s.id) >= 4 THEN 'Quarterly Saver'
           WHEN COUNT(s.id) >= 1 THEN 'Occasional Saver'
           ELSE 'Inactive'
       END AS segment
FROM users_customuser u
LEFT JOIN savings_savingsaccount s ON u.id = s.owner_id
GROUP BY u.id, u.first_name, u.last_name;