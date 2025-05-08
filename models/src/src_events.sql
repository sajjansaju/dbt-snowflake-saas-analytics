with events as (
                    select * from {{ source('PRODUCT_ANALYTICS','events') }}
)
select event_id,
        session_id,
        user_id,
        feature_name,
        event_type,
        event_time,
        metadata
from events