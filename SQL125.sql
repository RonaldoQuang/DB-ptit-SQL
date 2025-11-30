update SinhVien
set TrangThai=case
when DiemTB>=5.0 then "Đạt"
else "Không đạt"
end;