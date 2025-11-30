select m.TenHang, n.MaCongTy, n.TenCongTy
from MATHANG as m
join NHACUNGCAP as n
on m.MaCongTy=n.MaCongTy
order by m.TenHang;