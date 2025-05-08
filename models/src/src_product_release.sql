with product_release as(
                        select * from {{ source('PRODUCT_ANALYTICS','product_release') }}
)
select 
        release_id,
        feature_name,
        release_date,
        release_note,
        updated_by
from product_release
