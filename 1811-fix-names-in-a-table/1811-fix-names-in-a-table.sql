# select user_id,
#         concat(upper(left(name, 1)), lower(right(name, length(name) - length(left(name, 1))))) as name
# from users
# order  by 1

select user_id,
        concat(upper(left(name, 1)), lower(substring(name, 2, length(name) - length(left(name, 1))))) as name
from users
order by 1