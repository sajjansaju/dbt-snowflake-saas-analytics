with sessions as (
                    select * from {{ source('PRODUCT_ANALYTICS','sessions') }}
)
select session_id,
        user_id,
        login_time,
        logout_time,
        device_type,
        os,
        browser
from sessions