{{config(
            materialized = 'view',
            on_schema_change = 'fail'
)
}}
with src_subscription as (
    select * from {{ref('src_subscription')}}
)
select 
        trim(cast(sub_id as text)) as sub_id,
        user_id,
        plan,
        start_date,
        end_date,
        is_active,
        amount_paid
from src_subscription 
