with src_features as (
                        select * from {{ref('src_features')}}
)
select 
        feature_name,
        trim(description) as description,
        category,
        release_date,
        is_premium
from src_features