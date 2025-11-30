select concat(n.HONV,n.TENLOT,n.TENNV) as "Trưởng phòng nghiên cứu"
from PHONGBAN as p
join NHANVIEN as n
on p.TRPHG=n.MANV
where p.MAPHG=5;