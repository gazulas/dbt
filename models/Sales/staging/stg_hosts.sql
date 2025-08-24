{{ config(materialized='table') }}

with
    hosts as (select id, name from {{ source('src_raw', 'raw_hosts' )}})
    select * from hosts