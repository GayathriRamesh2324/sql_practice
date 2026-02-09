--Using Subquery:
Select MAX(salary) as SecondHighestSalary
from Employee
where salary < 
    (
        Select MAX(salary) 
        from Employee
    )

--Using Window function:
With cte_rank as (
Select id,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) rnk
from Employee
)

Select MAX(salary) as SecondHighestSalary
from cte_rank
where rnk = 2


