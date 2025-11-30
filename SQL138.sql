update Users
set name=concat(upper(substring(name,1,1)),lower(substring(name,2)));