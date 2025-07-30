{{ config(materialized='table') }}

select tgt.*,
       {{ odd_or_even('tgt.id') }} as Odd_or_Even_ID,
       current_date() as created_date
from {{ ref('my_second_dbt_model') }} tgt