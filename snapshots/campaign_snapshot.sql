{% snapshot campaign_snapshot() %}

{{

    config(
      target_schema = 'hist_stage',
      unique_key = 'campaign_id',
      strategy = 'timestamp',
      updated_at = 'updated_ts',
      dbt_valid_to_current = "to_date('9999-12-31')",
      hard_deletes = 'new_record',

      snapshot_meta_column_names={
          'dbt_valid_from': 'effective_from',
          'dbt_valid_to': 'effective_to',
          'dbt_is_deleted': 'delete_ind'
      }
    )
}}


select * from {{ source('campaign','campaigns') }}

{% endsnapshot %}