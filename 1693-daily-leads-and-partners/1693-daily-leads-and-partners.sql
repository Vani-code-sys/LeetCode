# Write your MySQL query statement below
select tmp.date_id, tmp.make_name,count(distinct(tmp.lead_id)) as unique_leads, count(distinct(tmp.partner_id)) as unique_partners
from
(select date_id, make_name, lead_id, partner_id from dailysales
group by date_id, make_name, lead_id, partner_id) as tmp
group by tmp.date_id, tmp.make_name; 