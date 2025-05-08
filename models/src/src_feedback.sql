with feedback as(
                    select * from {{ source('PRODUCT_ANALYTICS','feedback') }}
)
select 
        feedback_id,
        user_id,
        feature_name,
        rating,
        comment,
        submitted_at
from feedback
