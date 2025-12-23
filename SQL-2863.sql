select b1.Team, (b2.Home+b3.Away) as Total_Attendance
from (select b.Team
      from (select HomeTeam as Team from TeamStats
            union 
            select AwayTeam from TeamStats) as b ) as b1
left join (select HomeTeam, sum(HomeAttendance) as Home
           from TeamStats
           group by HomeTeam) as b2
on b1.Team=b2.HomeTeam
left join (select AwayTeam, sum(AwayAttendance) as Away
           from TeamStats
           group by AwayTeam) as b3
on b1.Team=b3.AwayTeam
order by Total_attendance desc, b1.Team;



    


