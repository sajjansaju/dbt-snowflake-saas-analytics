{{  config (
            materialized = 'view',
            on_schema_change = 'fail'
)
}}
with src_sessions as(
    select * from {{ref('src_sessions')}}
)
select
        trim(cast(session_id as text)) as session_id,
        user_id,
        login_time,
        logout_time,
        device_type,
        os,
        browser
from src_sessions
