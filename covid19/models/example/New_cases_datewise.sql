
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}
select sum(new_cases)as new_cases,sum(new_active_cases)as new_active_cases,sum(new_recovered)as new_recovered,sum(new_deaths)as new_deaths,location,date
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_CHOUDHARY"
group by location,date
order by date desc
