select
    case
        when HomeTeam<AwayTeam then HomeTeam
        else AwayTeam
    end as TeamA,
    case 
        when HomeTeam<AwayTeam then AwayTeam
        else HomeTeam
    end as TeamB,
    avg(HomeAttendance+AwayAttendance) as Avg_Total_Attendance
from TeamStats
group by
    case
        when HomeTeam<AwayTeam then HomeTeam
        else AwayTeam
    end,
    case 
        when HomeTeam<AwayTeam then AwayTeam
        else HomeTeam
    end
order by Avg_Total_Attendance desc, TeamA, TeamB
limit 3;


    

