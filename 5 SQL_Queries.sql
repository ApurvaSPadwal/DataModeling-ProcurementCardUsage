
-- query 1 
-- How many procurement cards were distributed to the employees in the last 6 months per department?

SELECT 
	Department,
	datename(month, start_date)  Card_Issued_Month, 
	count(cardholder_ID) Number_Of_Cards 
FROM cardholder
where department is not null
group by Department, datename(month, start_date) 
order by Department, count(cardholder_ID) desc


-- query 2
-- 
SELECT
	Department,
	Application_Status,
	COUNT(application_ID) as NumberOfPeople
FROM cardholder ch 
INNER JOIN procurement_card_application pca
	ON ch.cardholder_ID = pca.cardholder_ID
WHERE application_status = 'Rejected'
GROUP BY Department, Application_Status


--  query 3
-- Departments which have a average spend limit higher than the average spend limit for the organisation
SELECT department, AVG(spend_limit) as Dep_Avg_Spend_Limit
FROM cardholder c INNER JOIN procurement_card pc
	ON c.cardholder_ID = pc.cardholder_ID
GROUP BY department
HAVING AVG(spend_limit) > (SELECT AVG(spend_limit) FROM procurement_card)

