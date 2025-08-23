with
 listings as (select host_id, room_type, price from airbnb.raw.raw_listings)
 select * from listings