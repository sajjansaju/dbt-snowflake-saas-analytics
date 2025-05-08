with subscription as(
                        select * from {{ source('PRODUCT_ANALYTICS','subscriptions') }}
)
select 
        sub_id,
        user_id,
        plan,
        start_date,
        end_date,
        is_active,
        amount_paid
from subscription
