WITH RankedEmployees AS (
    SELECT
        EmployeeID,
        EmployeeName,
        Department,
        Salary,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS rn
    FROM Employees
)
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    Salary
FROM RankedEmployees
WHERE rn <= 3;


/*

make cte RankedEmployees to store the result
of Employees Table that partition by Department
and order by salary DESC and make result of RankedEmployees
assigns to unique number to each row within each Department
using function ROW_NUMBER()
after that select necessary culmon from cte RankedEmployees
that filter by highest paid Salary top 3 only using alias unique rn

*/