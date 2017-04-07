connection: "snowflake_-_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: impression_fact {
label: "Impression Metrics"

  join: flight_media_details_base {
    relationship: many_to_one
    sql_on: ${flight_media_details_base.flight_media_id} = ${impression_fact.flight_media_id} ;;
  }

  join: flight_details {
    relationship: many_to_one
    sql_on: ${flight_media_details_base.flight_id} = ${flight_details.flight_id} ;;
  }

  join: campaign_details_base {
    relationship: many_to_one
    sql_on: ${flight_details.campaign_id} = ${campaign_details_base.campaign_id} ;;
  }

  join: advertiser_brand_details {
    relationship: many_to_one
    sql_on: ${campaign_details_base.advertiser_brand_id} = ${advertiser_brand_details.advertiser_brand_id} ;;
  }

  join:  insertion_order_details {
    relationship: many_to_one
    sql_on: ${campaign_details_base.insertion_order_id} = ${insertion_order_details.insertion_order_id};;
  }

  join: placement_details_base {
    relationship: many_to_one
    sql_on: ${placement_details_base.placement_id} = ${impression_fact.placement_id} ;;
  }

  join:  geodata{
    relationship: many_to_one
    sql_on: ${geodata.geoid} = ${impression_fact.geo} ;;
  }
}

explore: flight_details {
  join: flight_media_details_base {
    relationship: many_to_one
    sql_on: ${flight_media_details_base.flight_id} = ${flight_details.flight_id} ;;
  }
}

explore: campaign_facts {}
