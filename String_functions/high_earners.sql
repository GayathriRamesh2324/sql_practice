#to find the employees who are high earners in each of the departments

Select Department,Employee,Salary
from 
(
        Select d.name Department,d.id,e.departmentId,e.name Employee,e.salary Salary,
        DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) rnk
        from Employee e
        JOIN Department d
        ON e.departmentId = d.id
)t
where rnk <=3

