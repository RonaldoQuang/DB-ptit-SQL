select p.MAPHG, p.TENPHG
from PHONGBAN as p
join (select PHG, sum(LUONG)/count(MANV) as Luongtrungbinh
      from NHANVIEN
      group by PHG) as b1
on p.MAPHG=b1.PHG
where b1.Luongtrungbinh=(select max(b1.Luongtrungbinh)
                         from (select PHG, sum(LUONG)/count(MANV) as Luongtrungbinh
                               from NHANVIEN
                               group by PHG) as b1)