-- Task1 List all flights (Flight_no) for those that leaves HOU or SFO
select Flight_no
	from flight
where Flight_origin IN ('HOU', 'SFO');

-- Task 2 Generate a list of all information about the frequently flyer whose first name starts with “D”.
select * 
from flyer
where Flyer_Name LIKE '%, D.%'

-- Task3  Generate a list of all flight operators, along with the number of flights of each operator, 
-- and its average miles per flight. 
-- Order the output by the average miles per flight in descending order.

SELECT
	Flight_operator, 
    COUNT(*) AS total_flights, 
    ROUND(AVG(Miles_per_flight), 2) AS average_miles
FROM flight
GROUP BY Flight_operator
ORDER BY average_miles DESC;

-- Task 4 For each Flight_operator, calculate the number of trips
-- commissioned by it with a fare greater than $300.

SELECT
  f.Flight_operator,
  COUNT(*) AS trips_over_300
FROM trip t
JOIN flight f USING (Flight_no)
WHERE t.Flight_fare > 300
GROUP BY f.Flight_operator
ORDER BY trips_over_300 DESC;

-- Task 5 List the names of the flyers who ever went to SFO

SELECT DISTINCT Flyer_Name
FROM flyer
WHERE Frequent_Flyer_ID IN (
  SELECT Frequent_Flyer_ID
  FROM trip
  WHERE Flight_no IN (
    SELECT Flight_no
    FROM flight
    WHERE Flight_Destination = 'SFO'
  )
);

-- Task 6 Identify all the possible round trips from the flight table 
-- List the Flight_no, the origin, and the destination. 

SELECT 
  f1.Flight_no,
  f1.Flight_Origin,
  f1.Flight_Destination
FROM flight AS f1
JOIN flight AS f2
  ON f1.Flight_Origin      = f2.Flight_Destination
 AND f1.Flight_Destination = f2.Flight_Origin
ORDER BY f1.Flight_Origin;

-- Task 7 What is the most visited flight destination?
-- In case of a tie, list all of them.

WITH counts_per_dest AS (
	SELECT
		f.Flight_Destination As dest,
        count(*) AS num_visits
	FROM trip t
    JOIN flight f USING (Flight_no)
    GROUP BY f.Flight_Destination
)

SELECT dest, num_visits
FROM counts_per_dest
WHERE num_visits = (
	SELECT MAX(num_visits)
    FROM counts_per_dest
);

-- Task 8 Extract the most popular author in the university (borrowed the most often by students)
-- In case of a tie, list all of them.

WITH counts_per_author AS (
  SELECT
    b.Book_First_Author  AS Author,
    COUNT(*)  AS total_borrows
  FROM Book_borrow bb
  JOIN Library_copy lc   ON bb.Book_Call_No = lc.Book_Call_No
  JOIN book b            ON lc.Book_ISBN     = b.Book_ISBN
  GROUP BY b.Book_First_Author
)
SELECT
  Author,
  total_borrows
FROM counts_per_author
WHERE total_borrows = (
  SELECT MAX(total_borrows)
  FROM counts_per_author
);

-- Task 9 Use the loan table, for each student, calculate the total payment due for all books he/she borrowed. 
-- Assume that the university charges $0.1 per book per day for book loans.
SELECT
  s.Stu_ID,
  s.Stu_Name,
  ROUND(
    SUM(
      DATEDIFF(
        CASE 
          WHEN bb.Return_Date = '1900-01-01' 
            THEN CURDATE() 
          ELSE bb.Return_Date 
        END,
        bb.Borrow_Date
      )
      * 0.1
    )
  , 2) AS total_due
FROM Book_borrow AS bb
JOIN student     AS s  USING (Stu_ID)
GROUP BY s.Stu_ID, s.Stu_Name
ORDER BY s.Stu_ID;

