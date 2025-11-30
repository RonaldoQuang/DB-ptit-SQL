select distinct TENPHG as "Tên phòng"
from PHONGBAN as p
join NHANVIEN as n
on p.MAPHG=n.PHG;