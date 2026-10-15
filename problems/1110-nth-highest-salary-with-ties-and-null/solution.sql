-- your query
SELECT Distinct salary as nth_salary
from employee
order by salary desc
limit 1 offset 2