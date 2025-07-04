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

CREATE PROCEDURE CheckSalary(IN emp_salary INT)
BEGIN
    IF emp_salary > 50000 THEN
        SELECT 'High Salary' AS Result;
    ELSE
        SELECT 'Low Salary' AS Result;
    END IF;
END;

CALL CheckSalary(55000);

SELECT GetGrade(85) AS GradeResult;
