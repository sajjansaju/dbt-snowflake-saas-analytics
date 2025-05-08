{{config(
            materialized = 'incremental',
            on_schema_change = 'fail'
        )
}}

with src_product_release as (
                                select * from {{ref('src_product_release')}}
)
select 
        trim(release_id) as release_id,
        feature_name,
        date(release_date) as release_date,
        trim(release_note)as release_note,
        updated_by
from src_product_release
{% if is_incremental() %}
where release_id > (select max(release_id) from {{this}})
{% endif %}
