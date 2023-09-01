
{{ config(
    materialized='table',
    alias='transformed_facilities'
) }}

select
  "Name",
  STREETADDRESS,
  upper(CITY) as CITY,
  STATE,
  COUNTRY,
  round(LATITUDE, 2) as LATITUDE,
  round(LONGITUDE, 2) as LONGITUDE