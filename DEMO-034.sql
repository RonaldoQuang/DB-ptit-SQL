delete from LoyaltyHistory
where HistoryID in (
    select b1.HistoryID
    from (select l.HistoryID
          from LoyaltyHistory as l
          join (select CustID
                from SaleOrder
                group by CustID
                having sum(TotalAmount)<1000) as c 
          on l.CustID=c.CustID
          where l.Reason='WELCOME_BONUS'
          and l.ChangeDate<(select max(l2.ChangeDate)
                            from LoyaltyHistory as l2
                            where l2.CustID=l.CustID
                            and l2.Reason = 'WELCOME_BONUS'
                            and l2.PointsChange=l.PointsChange) ) as b1
);
