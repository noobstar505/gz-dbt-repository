SELECT
 finance.date_date
  ,ROUND(operational_margin-ads_cost,2) AS ads_margin
   ,average_basket
    ,operational_margin
     ,ads_cost
      ,nb_transactions
       ,revenue
        ,margin
         ,purchase_cost
          ,shipping_fee
           ,ship_cost
            ,logcost
             ,ads_impressions
              ,ads_clicks
               ,quantity
FROM {{ ref('finance_days') }} finance
JOIN {{ ref('int_campaigns_day') }} campaign
USING(date_date)
