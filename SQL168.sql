select concat(n.HONV,' ',n.TENLOT,' ',n.TENNV) as "Nhân viên tham gia trên 2 đề án ở TP.HCM"
from (select b1.MANV, count(b1.MADA) as sl
      from (select n.MANV, d.MADA
            from NHANVIEN as n
            join PHANCONG as p
            on n.MANV=p.MA_NVIEN
            join DEAN as d
            on p.MADA=d.MADA
            where d.DDIEM_DA='TP.HCM') as b1
      group by b1.MANV) as b2
join NHANVIEN as n
on b2.MANV=n.MANV
where b2.sl>=2;