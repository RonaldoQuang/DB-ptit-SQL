select b1.Team, b2.Avg_As_Home, b3.Avg_As_Away
from (select distinct b.Team
      from (select HomeTeam as Team from TeamStats
            union 
            select AwayTeam from TeamStats) as b ) as b1
left join (select HomeTeam, avg(HomeAttendance) as Avg_As_Home
           from TeamStats
           group by HomeTeam) as b2
on b1.Team=b2.HomeTeam
left join (select AwayTeam, avg(AwayAttendance) as Avg_As_Away
           from TeamStats
           group by AwayTeam) as b3
on b1.Team=b3.AwayTeam
order by b1.Team;



    

