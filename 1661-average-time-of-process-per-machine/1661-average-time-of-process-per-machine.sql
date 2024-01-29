# Write your MySQL query statement below
select machine_id, round((sum(tmp1.end - tmp1.start)/count(*)),3) as processing_time
from
(select tmp.machine_id, tmp.process_id, max(tmp.start) as start, max(tmp.end) as end
from (
      select
        machine_id, process_id, 
        case when activity_type = "start" then timestamp end as start,
        case when activity_type = "end" then timestamp end as end
       from Activity
      ) as tmp
group by tmp.machine_id, tmp.process_id) as tmp1
group by machine_id;