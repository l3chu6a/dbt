with customers as (

select * 
from {{ ref('stg_jaffle_shop__customers') }}

), 

orders as (

 select * 
 from   {{ ref('stg_jaffle_shop__orders') }}

)

select
CUSTOMERS.customer_id,
ORDERS.order_date,
ORDERS.status
from CUSTOMERS left join ORDERS on CUSTOMERS.customer_id = ORDERS.customer_id

