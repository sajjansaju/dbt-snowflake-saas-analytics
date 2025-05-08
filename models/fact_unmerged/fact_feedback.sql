{{ config(
            materialized = 'view',
            on_schema_change = 'fail'
)
}}
with src_feedback as(
                    select * from {{ref ('src_feedback')}}
)
select 
        trim(cast(feedback_id as text)) as feedback_id,
        user_id,
        feature_name,
        case 
            when rating = 1 then 'Very Poor'
            when rating = 2 then 'Poor'
            when rating = 3 then 'Average'
            when rating = 4 then 'Good'
            else 'Excellent'
        end as rating,
        trim(comment) as comment,
        submitted_at
from src_feedback
