
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select LOCATION,LATITUDE,sum(total_cases) as total_cases,sum(TOTAL_RECOVERED) as total_recovered,sum(TOTAL_deaths) as deaths,avg(CASE_FATALITY_RATE) as death_rate,avg(CASE_RECOVERED_RATE) as recovery_rate
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_CHOUDHARY"
group by LOCATION,LATITUDE

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
