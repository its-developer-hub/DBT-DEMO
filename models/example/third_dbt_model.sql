{{ config(materialized='table') }}

select tgt.*, current_date() as created_date
from {{ ref('my_second_dbt_model') }} tgt