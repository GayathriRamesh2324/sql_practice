##to find Users With Valid E-Mails

CONDITION: 
A valid e-mail has a prefix name and a domain where:
The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.', and/or dash '-'. 
The prefix name must start with a letter.
The domain is '@leetcode.com'.

QUERY:
Select user_id,name,mail
from Users
where  REGEXP_LIKE (mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$','c')

Accepted
Runtime: 87 ms
Case 1
Input
Users =
| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
View more
Output
| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
Expected
| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
