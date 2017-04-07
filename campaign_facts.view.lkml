view: campaign_facts {

  derived_table: {
    sql: SELECT
         flight_details.CAMPAIGN_ID  AS "campaign_id",
  (1.0 * (COALESCE(SUM(impression_fact.clicks ), 0)))/NULLIF((COALESCE(SUM(impression_fact.CLICK_IMPRESSIONS ), 0)),0)  AS "ctr"
      FROM RAWDB.IMPRESSION_FACT  AS impression_fact
      LEFT JOIN DIM.FLIGHT_MEDIA_DETAILS_BASE  AS flight_media_details_base ON flight_media_details_base.FLIGHT_MEDIA_ID = impression_fact.FLIGHT_MEDIA_ID
      LEFT JOIN DIM.FLIGHT_DETAILS  AS flight_details ON flight_media_details_base.FLIGHT_ID = flight_details.FLIGHT_ID

      GROUP BY 1
      ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}."campaign_id" ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}."ctr" ;;
  }

  dimension: ctr_tier {
    type: tier
    sql: ${ctr} * 100.0 ;;
    tiers: [1,2,5]
    style: integer
  }

  measure: campaign_count {
    type: count
  }
}

#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
