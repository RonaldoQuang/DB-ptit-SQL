select HomeTeam, avg(HomeAttendance) as Avg_Home_Attendance, 
       AwayTeam, avg(AwayAttendance) as Avg_Away_Attendance
from TeamStats
group by HomeTeam,AwayTeam;