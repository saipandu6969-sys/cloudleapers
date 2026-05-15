{{config(materialized='table')}}
SELECT distinct * ,case 
when email is null then 'intern' else 'full-time' end as employment_type
FROM {{ ref('int_emp1') }}
where salary > 0
order by emp_id
