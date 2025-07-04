MySQL Stored Function and Procedure Example
Overview
This project demonstrates how to:

✅ Create a Function in MySQL that accepts parameters and uses conditional logic.
✅ Create a Procedure in MySQL that accepts parameters and uses conditional logic.
✅ Call the procedure and function to test the logic.

SQL Objects Created
1. Function: GetGrade
Purpose: Returns a grade based on the input marks.

Input Parameter: marks (INT)

Return Type: VARCHAR(10)

Logic:

Marks Range	Grade Returned
90 and above	A
75 - 89	B
60 - 74	C
Below 60	D

2. Procedure: CheckSalary
Purpose: Displays whether the salary is "High Salary" or "Low Salary".

Input Parameter: emp_salary (INT)

Logic:

Salary Condition	Output
Above 50000	High Salary
50000 or below	Low Salary

Code Explanation
sql
Copy
Edit
CREATE FUNCTION GetGrade(marks INT) RETURNS VARCHAR(10)
BEGIN
    DECLARE grade VARCHAR(10);
    IF marks >= 90 THEN
        SET grade = 'A';
    ELSEIF marks >= 75 THEN
        SET grade = 'B';
    ELSEIF marks >= 60 THEN
        SET grade = 'C';
    ELSE
        SET grade = 'D';
    END IF;
    RETURN grade;
END;
Defines the function GetGrade to return the grade based on the marks provided.

sql
Copy
Edit
CREATE PROCEDURE CheckSalary(IN emp_salary INT)
BEGIN
    IF emp_salary > 50000 THEN
        SELECT 'High Salary' AS Result;
    ELSE
        SELECT 'Low Salary' AS Result;
    END IF;
END;
Defines the procedure CheckSalary to print salary category based on the provided salary.

Calling the Procedure and Function
sql
Copy
Edit
CALL CheckSalary(55000);
Calls the procedure with 55000 as input; output will be High Salary.

sql
Copy
Edit
SELECT GetGrade(85) AS GradeResult;
Calls the function with 85 as input; output will be 'B'.

Notes
This code is intended for MySQL.

The DELIMITER may be required in MySQL CLI or some editors to avoid confusion with semicolons. For example:

sql
Copy
Edit
DELIMITER //

-- Function or Procedure Code

//

DELIMITER ;
GUI tools like MySQL Workbench often handle statement separation automatically.

Execution Steps
Connect to MySQL.

Run the CREATE FUNCTION block.

Run the CREATE PROCEDURE block.

Call the procedure using CALL.

Call the function using SELECT.
