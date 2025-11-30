select d.gender, count(*) as total_donations
from Donors d
join Donations dn 
on d.id = dn.donor_id
group by d.gender;
