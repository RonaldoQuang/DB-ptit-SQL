select l.TenLoaiHang, n.TenCongTy, n.DiaChi
from LOAIHANG as l
join MATHANG as m
on l.MaLoaiHang=m.MaLoaiHang
join NHACUNGCAP as n
on m.MaCongTy=n.MaCongTy
where l.TenLoaiHang='furniture';