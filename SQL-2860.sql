select HomeTeam, avg(HomeAttendance) as Avg_Home_Attendance
from TeamStats
group by HomeTeam
order by Avg_Home_Attendance desc, HomeTeam
limit 3;
