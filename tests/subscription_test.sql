select amount_paid 
from {{ref('fact_user_activity')}}
where amount_paid < 0
limit 10
