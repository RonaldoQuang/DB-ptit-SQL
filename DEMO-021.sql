insert into ALUMNI(SID,FullName)
select SID, FullName
from STUDENT
where Graduated=1;