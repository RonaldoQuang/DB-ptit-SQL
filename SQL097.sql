select b1.machine_id, round(sum(b1.tinh)/count(b1.tinh),3) as processing_time
from (select a1.machine_id, (a2.timestamp-a1.timestamp) as tinh
      from Activity as a1
      join Activity as a2
      on a1.machine_id=a2.machine_id 
      and a1.process_id=a2.process_id 
      and a1.timestamp<a2.timestamp) as b1
group by b1.machine_id;
