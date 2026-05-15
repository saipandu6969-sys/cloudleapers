{{config(materialized='table')}}


with stg as (
select * FROM {{ ref('stg_emp') }}
),

pre_data as (

    select distinct *
    from stg
    where emp_id is not null
      and department is not null
      and salary is not null

)
select  * from pre_data