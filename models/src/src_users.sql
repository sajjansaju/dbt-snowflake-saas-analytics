with users as(
                select * from {{ source('PRODUCT_ANALYTICS','users') }}
)               
select 
        user_id,
        name,
        email,
        signup_date,
        region,
        plan,
        coalesce(referrer,'No Referee') as referrer
from users
