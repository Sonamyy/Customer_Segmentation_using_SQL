use customer_segmentation;
 SELECT *
FROM customer
LIMIT 20;

/*'Heres an example of SQL queries to segment customers into four categories for automobile sales targeting based on the provided columns:

1. Potential High-Value Customers:
These are customers who are older, married, well-educated, and have higher spending scores'*/

SELECT
  ID,
  age,
  Ever_married,
  graduated,
  spending_score
FROM
  customer
WHERE
  age >= 30
  AND Ever_married = 'Yes'
  AND graduated = 'Yes'
  AND spending_score >= 'High';

/*2. Young Professionals:
These are young, unmarried customers who are well-educated and have a higher likelihood of having higher future income.*/

SELECT
  ID,
  age,
  Ever_married,
  graduated,
  profession
FROM
  customer
WHERE
  age < 30
  AND Ever_married = 'No'
  AND graduated = 'Yes';

/*3. Family-Oriented Customers:
These are customers who are married, have children (larger family sizes), and are likely to prioritize safety and space in their automobile purchases.*/

SELECT
  ID,
  Ever_married,
  family_size
FROM
  customer
WHERE
  Ever_married = 'Yes'
  AND family_size > 2;

/*4. Young Aspirants:
These are young customers who have recently started their professional careers and may be interested in affordable or entry-level vehicles.*/

SELECT
  ID,
  age,
  profession,
  work_experience
FROM
  customer
WHERE
  age < 25
  AND work_experience <= 2;

/*These queries represent a starting point for segmenting customers based on the given columns. You can modify the criteria and columns used in the `SELECT` and `WHERE` clauses to refine the segmentation according to your specific requirements.

Please replace `customer` with the actual name of your table in the queries.*/