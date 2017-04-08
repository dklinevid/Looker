connection: "snowflake_-_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: daily_bt_acquisition {
  description: "Daily BT Segment Acquisition"
 join: retargeting_attribute{
  relationship: many_to_one
  sql_on: ${daily_bt_acquisition.retargeting_attribute_id} = ${retargeting_attribute.retargeting_attribute_id} ;;

 }

  join: source_provider {
    view_label: "Source Provider"
    relationship: many_to_one
    sql_on: ${retargeting_attribute.source_provider_id} = ${source_provider.user_data_vendor_id} ;;
  }
}
