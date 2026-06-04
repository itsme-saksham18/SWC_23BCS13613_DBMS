SELECT 
7 as month,
count(distinct july.user_id) as monthly_active_users
from user_actions as july
JOIN
user_actions as june
on june.user_id  = july.user_id where
extract(month from july.event_date) = 7
AND
extract(month from june.event_date) = 6

