{{config(
            materialized = 'view',
            on_schema_change ='fail'
)
}}
with src_events as(
    select * from {{ref ('src_events')}}
)
select 
        trim(cast(event_id as text)) as event_id,
        trim(cast(session_id as text))as session_id,
        user_id,
        replace(event_type,'_',' ') as event_type,
        feature_name,
        event_time,
        metadata
from src_events

