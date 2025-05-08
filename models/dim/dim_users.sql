{{
    config(
        materialized = 'incremental',
        on_schema_change= 'fail'
    )
}}
with src_users as (
					select * from {{ref ('src_users')}}
)
select 	
		user_id,
		name,
		email,
		signup_date,
		region,
		plan,
		referrer
from src_users
{% if is_incremental() %}
    where user_id> (select max(user_id) from {{this}})
{% endif %}