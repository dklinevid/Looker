view: impression_fact {
  sql_table_name: RAWDB.IMPRESSION_FACT ;;

  dimension: ad_buyer_id {
    type: string
    sql: ${TABLE}.AD_BUYER_ID ;;
  }

  measure: addon_product_cost {
    type: sum
    sql: ${TABLE}.ADDON_PRODUCT_COST ;;
  }

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  measure: adserving_cost {
    type: sum
    sql: ${TABLE}.ADSERVING_COST ;;
  }

  dimension: adserving_cost_currency {
    type: string
    sql: ${TABLE}.ADSERVING_COST_CURRENCY ;;
  }

  measure: adserving_cost_markup {
    type: sum
    sql: ${TABLE}.ADSERVING_COST_MARKUP ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: asset_group_clearcast_codes {
    type: string
    sql: ${TABLE}.ASSET_GROUP_CLEARCAST_CODES ;;
  }

  dimension: asset_group_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_GROUP_ID ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.ASSET_ID ;;
  }

  measure: autoplay {
    type: sum
    sql: ${TABLE}.AUTOPLAY ;;
  }

  dimension: awsregion {
    type: string
    sql: ${TABLE}.AWSREGION ;;
  }

  measure: bid {
    type: sum
    sql: ${TABLE}.BID ;;
  }

  dimension: bid_currency {
    type: string
    sql: ${TABLE}.BID_CURRENCY ;;
  }

  measure: billable_impressions {
    type: sum
    sql: ${TABLE}.BILLABLE_IMPRESSIONS ;;
  }

  measure: billable_units {
    type: sum
    sql: ${TABLE}.BILLABLE_UNITS ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  measure: bt_cluster_cost {
    type: sum
    sql: ${TABLE}.BT_CLUSTER_COST ;;
  }

  dimension: bt_cluster_cost_attribute {
    type: string
    sql: ${TABLE}.BT_CLUSTER_COST_ATTRIBUTE ;;
  }

  dimension: bt_cluster_cost_currency {
    type: string
    sql: ${TABLE}.BT_CLUSTER_COST_CURRENCY ;;
  }

  dimension: bt_cluster_cost_markup {
    type: string
    sql: ${TABLE}.BT_CLUSTER_COST_MARKUP ;;
  }

  dimension: bt_cluster_provider {
    type: string
    sql: ${TABLE}.BT_CLUSTER_PROVIDER ;;
  }

  dimension: bt_cost_attribute {
    type: string
    sql: ${TABLE}.BT_COST_ATTRIBUTE ;;
  }

  dimension: bt_cost_markup {
    type: string
    sql: ${TABLE}.BT_COST_MARKUP ;;
  }

  dimension: btcostcurrency {
    type: string
    sql: ${TABLE}.BTCOSTCURRENCY ;;
  }

  dimension: btproviderdatacost {
    type: string
    sql: ${TABLE}.BTPROVIDERDATACOST ;;
  }

  dimension: btproviderid {
    type: string
    sql: ${TABLE}.BTPROVIDERID ;;
  }

  dimension: clearing_price {
    type: string
    sql: ${TABLE}.CLEARING_PRICE ;;
  }

  dimension: click_impressions {
    type: string
    sql: ${TABLE}.CLICK_IMPRESSIONS ;;
  }

  dimension: clicks {
    type: string
    sql: ${TABLE}.CLICKS ;;
  }

  dimension: clicktoplay {
    type: string
    sql: ${TABLE}.CLICKTOPLAY ;;
  }

  dimension: clock_clearcast_codes {
    type: string
    sql: ${TABLE}.CLOCK_CLEARCAST_CODES ;;
  }

  dimension: clock_number {
    type: string
    sql: ${TABLE}.CLOCK_NUMBER ;;
  }

  dimension: clusterid {
    type: string
    sql: ${TABLE}.CLUSTERID ;;
  }

  dimension: companions_media_id {
    type: string
    sql: ${TABLE}.COMPANIONS_MEDIA_ID ;;
  }

  dimension: completed_100 {
    type: string
    sql: ${TABLE}.COMPLETED_100 ;;
  }

  dimension: completed_25 {
    type: string
    sql: ${TABLE}.COMPLETED_25 ;;
  }

  dimension: completed_50 {
    type: string
    sql: ${TABLE}.COMPLETED_50 ;;
  }

  dimension: completed_75 {
    type: string
    sql: ${TABLE}.COMPLETED_75 ;;
  }

  dimension: completed_pct_impressions {
    type: string
    sql: ${TABLE}.COMPLETED_PCT_IMPRESSIONS ;;
  }

  dimension: completion_pct_impressions {
    type: string
    sql: ${TABLE}.COMPLETION_PCT_IMPRESSIONS ;;
  }

  dimension: cost_units {
    type: string
    sql: ${TABLE}.COST_UNITS ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: daypart {
    type: string
    sql: ${TABLE}.DAYPART ;;
  }

  dimension: deal_causing_house {
    type: string
    sql: ${TABLE}.DEAL_CAUSING_HOUSE ;;
  }

  dimension: demand_adserving_cost {
    type: string
    sql: ${TABLE}.DEMAND_ADSERVING_COST ;;
  }

  dimension: demand_bt_cluster_cost {
    type: string
    sql: ${TABLE}.DEMAND_BT_CLUSTER_COST ;;
  }

  dimension: demand_bt_cost {
    type: string
    sql: ${TABLE}.DEMAND_BT_COST ;;
  }

  dimension: demand_currency {
    type: string
    sql: ${TABLE}.DEMAND_CURRENCY ;;
  }

  dimension: demand_demo_cost {
    type: string
    sql: ${TABLE}.DEMAND_DEMO_COST ;;
  }

  dimension: demand_payout {
    type: string
    sql: ${TABLE}.DEMAND_PAYOUT ;;
  }

  dimension: demand_platform_client_group_id {
    type: string
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: demand_platform_client_id {
    type: string
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_ID ;;
  }

  dimension: demand_region_utc_offset {
    type: string
    sql: ${TABLE}.DEMAND_REGION_UTC_OFFSET ;;
  }

  dimension: demand_revenue {
    type: string
    sql: ${TABLE}.DEMAND_REVENUE ;;
  }

  dimension: demand_tracking_cost {
    type: string
    sql: ${TABLE}.DEMAND_TRACKING_COST ;;
  }

  dimension: demand_utc_offset {
    type: string
    sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
  }

  dimension: demo_cost_markup {
    type: string
    sql: ${TABLE}.DEMO_COST_MARKUP ;;
  }

  dimension: democostcurrency {
    type: string
    sql: ${TABLE}.DEMOCOSTCURRENCY ;;
  }

  dimension: demoproviderdatacost {
    type: string
    sql: ${TABLE}.DEMOPROVIDERDATACOST ;;
  }

  dimension: demoproviderid {
    type: string
    sql: ${TABLE}.DEMOPROVIDERID ;;
  }

  dimension: deviceaid {
    type: string
    sql: ${TABLE}.DEVICEAID ;;
  }

  dimension: distinct_clicks {
    type: string
    sql: ${TABLE}.DISTINCT_CLICKS ;;
  }

  dimension: domain_hash {
    type: string
    sql: ${TABLE}.DOMAIN_HASH ;;
  }

  dimension: domain_url {
    type: string
    sql: ${TABLE}.DOMAIN_URL ;;
  }

  dimension: dvid {
    type: string
    sql: ${TABLE}.DVID ;;
  }

  dimension: effective_impressions {
    type: string
    sql: ${TABLE}.EFFECTIVE_IMPRESSIONS ;;
  }

  dimension: effective_units {
    type: string
    sql: ${TABLE}.EFFECTIVE_UNITS ;;
  }

  dimension: eventtime {
    type: string
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension: flight_media_id {
    type: string
    sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.GEO ;;
  }

  dimension: house_reason_code {
    type: string
    sql: ${TABLE}.HOUSE_REASON_CODE ;;
  }

  dimension: impressions {
    type: string
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.IP ;;
  }

  dimension: is_viewability_measurable {
    type: string
    sql: ${TABLE}.IS_VIEWABILITY_MEASURABLE ;;
  }

  dimension: is_viewability_satisfied {
    type: string
    sql: ${TABLE}.IS_VIEWABILITY_SATISFIED ;;
  }

  dimension: is_viewable_100 {
    type: string
    sql: ${TABLE}.IS_VIEWABLE_100 ;;
  }

  dimension: is_viewable_25 {
    type: string
    sql: ${TABLE}.IS_VIEWABLE_25 ;;
  }

  dimension: is_viewable_50 {
    type: string
    sql: ${TABLE}.IS_VIEWABLE_50 ;;
  }

  dimension: is_viewable_75 {
    type: string
    sql: ${TABLE}.IS_VIEWABLE_75 ;;
  }

  dimension: is_viewable_start {
    type: string
    sql: ${TABLE}.IS_VIEWABLE_START ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  dimension: language_id {
    type: string
    sql: ${TABLE}.LANGUAGE_ID ;;
  }

  dimension: media_markup {
    type: string
    sql: ${TABLE}.MEDIA_MARKUP ;;
  }

  dimension: media_price {
    type: string
    sql: ${TABLE}.MEDIA_PRICE ;;
  }

  dimension: muted {
    type: string
    sql: ${TABLE}.MUTED ;;
  }

  dimension: normalized_domain {
    type: string
    sql: ${TABLE}.NORMALIZED_DOMAIN ;;
  }

  dimension: payout {
    type: string
    sql: ${TABLE}.PAYOUT ;;
  }

  dimension: payout_currency {
    type: string
    sql: ${TABLE}.PAYOUT_CURRENCY ;;
  }

  dimension: payout_type {
    type: string
    sql: ${TABLE}.PAYOUT_TYPE ;;
  }

  dimension: pdata1 {
    type: string
    sql: ${TABLE}.PDATA1 ;;
  }

  dimension: pdata2 {
    type: string
    sql: ${TABLE}.PDATA2 ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: platform_markup {
    type: string
    sql: ${TABLE}.PLATFORM_MARKUP ;;
  }

  dimension: player_size {
    type: string
    sql: ${TABLE}.PLAYER_SIZE ;;
  }

  dimension: poc {
    type: string
    sql: ${TABLE}.POC ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: postalcode_provider {
    type: string
    sql: ${TABLE}.POSTALCODE_PROVIDER ;;
  }

  dimension: primary_clicks {
    type: string
    sql: ${TABLE}.PRIMARY_CLICKS ;;
  }

  dimension: processingid {
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: pub_tracking_id {
    type: string
    sql: ${TABLE}.PUB_TRACKING_ID ;;
  }

  dimension: referring_url {
    type: string
    sql: ${TABLE}.REFERRING_URL ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.REVENUE ;;
  }

  dimension: revenue_cpu {
    type: string
    sql: ${TABLE}.REVENUE_CPU ;;
  }

  dimension: rpu_currency {
    type: string
    sql: ${TABLE}.RPU_CURRENCY ;;
  }

  dimension: rpu_type {
    type: string
    sql: ${TABLE}.RPU_TYPE ;;
  }

  dimension: skipped {
    type: string
    sql: ${TABLE}.SKIPPED ;;
  }

  dimension: social_ab {
    type: string
    sql: ${TABLE}.SOCIAL_AB ;;
  }

  dimension: social_abc {
    type: string
    sql: ${TABLE}.SOCIAL_ABC ;;
  }

  dimension: supply_platform_client_group_id {
    type: string
    sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: supply_platform_client_id {
    type: string
    sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_ID ;;
  }

  dimension: supply_region_utc_offset {
    type: string
    sql: ${TABLE}.SUPPLY_REGION_UTC_OFFSET ;;
  }

  dimension: supply_utc_offset {
    type: string
    sql: ${TABLE}.SUPPLY_UTC_OFFSET ;;
  }

  dimension: tracking_cost {
    type: string
    sql: ${TABLE}.TRACKING_COST ;;
  }

  dimension: tracking_cost_currency {
    type: string
    sql: ${TABLE}.TRACKING_COST_CURRENCY ;;
  }

  dimension: tracking_cost_markup {
    type: string
    sql: ${TABLE}.TRACKING_COST_MARKUP ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.UNITS ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.USERID ;;
  }

  dimension: version_no {
    type: string
    sql: ${TABLE}.VERSION_NO ;;
  }

  dimension: viewability_measurable_code {
    type: string
    sql: ${TABLE}.VIEWABILITY_MEASURABLE_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_group.asset_group_id, asset_group.asset_group_name]
  }
}
