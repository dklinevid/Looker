connection: "snowflake_-_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: impression_fact {
  join: flight_media_details_base {
    relationship: many_to_one
    sql_on: ${flight_media_details_base.flight_media_id} = ${impression_fact.flight_media_id} ;;
  }

  join: placement_details_base {
    relationship: many_to_one
    sql_on: ${placement_details_base.placement_id} = ${impression_fact.placement_id} ;;
  }
}
