{{config(materialized='table')}}
with mod1 as (select * from {{ source('raw', 'raw_employee_data') }})

select trim(emp_id) as emp_id,
trim(emp_name) as emp_name,
upper(department) as department,
try_cast(salary as integer) as salary,
joining_date,
email,
city
from mod1