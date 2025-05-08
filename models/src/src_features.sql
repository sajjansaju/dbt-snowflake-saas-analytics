with features as (
                    select * from {{ source('PRODUCT_ANALYTICS','features') }}
)
select 
        feature_name,
        description,
        category,
        release_date,
        is_premium
from features