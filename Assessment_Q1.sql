-- Q1: Cross-sell Opportunity - Customers with Both Savings and Investments
SELECT DISTINCT u.id AS customer_id, u.first_name, u.last_name, u.email
FROM users_customuser u
JOIN plans_plan p ON u.id = p.owner_id
JOIN savings_savingsaccount s ON p.id = s.plan_id
WHERE p.plan_type_id IS NOT NULL
AND EXISTS (
    SELECT 1 FROM plans_plan p2
    WHERE p2.owner_id = u.id AND p2.is_a_fund = 1
)
AND EXISTS (
    SELECT 1 FROM plans_plan p3
    WHERE p3.owner_id = u.id AND p3.is_regular_savings = 1
);