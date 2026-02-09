
#To fix names in a table in which first letter starts with Uppercase and remaining are lowercase
  
Select user_id,
CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2,LENGTH(name)))) name
from Users
ORDER BY user_id
