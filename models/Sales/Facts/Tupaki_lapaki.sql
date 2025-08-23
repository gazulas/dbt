with hosts as
(select * from {{ref("Stg_hosts")}}),
    listings as (select * from {{ref("listing")}})
select name, room_type, price
from hosts
inner join listings on hosts.id = listings.host_id
