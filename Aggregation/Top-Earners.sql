SELECT MAX(MONTHS * SALARY), COUNT(*)
FROM Employee
WHERE MONTHS * SALARY = (SELECT MAX(MONTHS * SALARY)
                        FROM Employee);