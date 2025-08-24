select 
    host_id, 
       sum(cast(replace(replace(price, '$', ''), ',', '') as numeric)) as total_price
from AIRBNB.RAW.RAW_LISTINGS
group by host_id
having not(total_price >=0)