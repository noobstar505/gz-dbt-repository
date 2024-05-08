SELECT
 DATE_TRUNC(date_date,MONTH) AS datemonth
  ,ROUND(SUM(ads_margin)) AS ads_margin
   ,ROUND(SUM(average_basket),1) AS average_basket
    ,ROUND(SUM(operational_margin),1) AS operational_margin
     ,ROUND(SUM(ads_cost),1) AS ads_cost
      ,SUM(nb_transactions) AS nb_transactions
       ,ROUND(SUM(revenue),1) AS revenue
        ,ROUND(SUM(margin),1) AS margin
         ,ROUND(SUM(purchase_cost),1) AS purchase_cost
          ,ROUND(SUM(shipping_fee),1) AS shipping_fee
           ,ROUND(SUM(ship_cost),1) AS ship_cost
            ,ROUND(SUM(logcost),1) AS logcost
             ,ROUND(SUM(ads_impressions),1) AS ads_impressions
              ,ROUND(SUM(ads_clicks),1) AS ads_clicks
               ,SUM(quantity) AS quantity
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
ORDER BY datemonth DESC