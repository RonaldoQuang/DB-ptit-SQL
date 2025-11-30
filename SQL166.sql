select p.MAPHG, p.TENPHG, b1.Luongtrungbinh "Lương trung bình"
from PHONGBAN as p
join (select PHG, sum(LUONG)/count(MANV) as Luongtrungbinh
      from NHANVIEN
      group by PHG) as b1
on p.MAPHG=b1.PHG;