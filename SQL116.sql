select *
from Instructor
where started_on>=date_sub(current_date,interval 20 year);