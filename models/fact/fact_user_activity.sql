{{ config(
            materialized = 'incremental',
            on_schema_change = 'fail'
)
}}

with events as (
    select * from {{ ref ('src_events')}}
),

sessions as (
    select * from {{ref ('src_sessions')}}
),

subscriptions as (
    select * from {{ ref('src_subscription')}}
)

select trim(cast(s.session_id as text)) as session_id,
		s.user_id,
		s.login_time,
		s.logout_time,
		s.device_type,
		s.os,
		s.browser,
		 trim(cast(e.event_id as text)) as event_id,
		e.feature_name,
		replace(e.event_type,'_',' ') as event_type,
		e.event_time,
		trim(cast(su.sub_id as text)) as sub_id,
		su.plan,
		su.start_date,
		su.end_date,
		su.is_active,
		su.amount_paid
		
from sessions as s
left join events as e
on s.session_id = e.session_id
left join subscriptions as su
on s.user_id = su.user_id

{% if is_incremental() %}
    where s.session_id > (select max(session_id) from {{ this }})
{% endif %}    