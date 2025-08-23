{{ config(materialized='table') }}

with
    hosts as (select id, name from airbnb.raw.raw_hosts)
    select * from hosts