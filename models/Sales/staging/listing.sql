with
 listings as (select host_id, room_type, price from {{ source('src_raw', 'raw_listings' )}})
 select * from listings