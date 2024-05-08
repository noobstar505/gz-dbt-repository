SELECT
orders_margin.orders_id
 , orders_margin.date_date
  ,ROUND((orders_margin.margin + shipping_fee)-(ship_cost+logcost),2) AS operational_margin
   ,quantity
    ,revenue
     ,purchase_cost
      ,margin
       ,shipping_fee
        ,ship_cost
         ,logcost
FROM {{ ref('int_orders_margin') }} AS orders_margin
JOIN {{ ref('stg_raw__ship') }} AS ship
USING(orders_id)
ORDER BY date_date DESC, orders_id DESC
