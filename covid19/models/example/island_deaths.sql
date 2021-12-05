{{ config(materialized='table') }}

select ISLAND,sum(total_deaths)as deaths
from"FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_CHOUDHARY"
group by island
