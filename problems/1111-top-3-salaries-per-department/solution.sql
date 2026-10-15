-- your query
SELECT *
FROM (
    SELECT department, name, salary, 
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) as rnk
    FROM employees
    ) as top3_per_dept
where rnk <= 3
order by department asc, salary desc, name asc