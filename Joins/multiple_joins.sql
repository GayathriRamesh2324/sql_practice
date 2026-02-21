#solution to find the number of times each student attended each exam.

Select  st.student_id, st.student_name,su.subject_name,count(ex.subject_name) attended_exams
from Students st
CROSS JOIN Subjects su
LEFT JOIN Examinations ex
ON su.subject_name=ex.subject_name
AND st.student_id = ex.student_id
Group by st.student_id,st.student_name,su.subject_name
ORDER BY st.student_id,su.subject_name


Accepted
Runtime: 166 ms
Case 1
Input
Students =
| student_id | student_name |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |
Subjects =
| subject_name |
| ------------ |
| Math         |
| Physics      |
| Programming  |
Examinations =
| student_id | subject_name |
| ---------- | ------------ |
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |
View less
Output
| student_id | student_name | subject_name | attended_exams |
| ---------- | ------------ | ------------ | -------------- |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
View more
Expected
| student_id | student_name | subject_name | attended_exams |
| ---------- | ------------ | ------------ | -------------- |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
