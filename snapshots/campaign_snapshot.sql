{% snapshot campaign_snapshot %}

{{

    config(
      target_schema = 'hist_stage',
      unique_key = 'campaign_id',
      strategy = 'timestamp',
      updated_at = 'updated_ts',
      dbt_valid_to_current = "to_date('9999-12-31')"
    )
}}


select * from {{ source('campaign','campaigns') }}

{% endsnapshot %}