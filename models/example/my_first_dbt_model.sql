
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id, 'A1' as val
    union all
    select 2 as id, 'A2' as val
    union all
    select 3 as id, 'A3' as val
    union all
    select -1 as id, null as val

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
