-- 1. Display full table data
SELECT * 
FROM EmployeeSalary;

-- 2. Subquery in SELECT clause
SELECT 
    EmployeeID, 
    Salary, 
    (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary;

-- 3. Achieving the same result using Partition / Window Function OVER()
SELECT 
    EmployeeID, 
    Salary, 
    AVG(Salary) OVER() AS AllAvgSalary
FROM EmployeeSalary;

-- 4. Demonstrating why GROUP BY fails to give the overall average
SELECT 
    EmployeeID, 
    Salary, 
    AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1, 2;

-- 5. Subquery in FROM clause (Derived Table)
SELECT 
    a.EmployeeID, 
    a.AllAvgSalary
FROM (
    SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
    FROM EmployeeSalary
) a;

-- 6. Subquery in WHERE clause
SELECT 
    EmployeeID, 
    JobTitle, 
    Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM EmployeeDemographics
    WHERE Age > 30
);