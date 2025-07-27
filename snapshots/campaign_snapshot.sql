{% snapshot campaign_snapshot %}

{{

    config(
      target_schema = 'hist_stage',
      unique_key = 'campaign_id',
      strategy = 'timestamp',
      updated_at = 'updated_ts'
    )
}}


select * from {{ source('campaign','campaigns') }}

{% endsnapshot %}