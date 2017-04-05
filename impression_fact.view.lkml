view: impression_fact {
  label: "Impression Metrics"
  sql_table_name: RAWDB.IMPRESSION_FACT ;;

  dimension: ad_buyer_id {
    type: string
    hidden: no
    sql: ${TABLE}.AD_BUYER_ID ;;
  }

  measure: addon_product_cost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.ADDON_PRODUCT_COST ;;
  }

  dimension: adid {
    type: string
    hidden: no
    sql: ${TABLE}.ADID ;;
  }

  measure: adserving_cost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.ADSERVING_COST ;;
  }

  dimension: adserving_cost_currency {
    type: string
    sql: ${TABLE}.ADSERVING_COST_CURRENCY ;;
  }

  measure: adserving_cost_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.ADSERVING_COST_MARKUP ;;
  }

  dimension: age {
    type: string
    hidden: no
    sql: ${TABLE}.AGE ;;
  }

  dimension: asset_group_clearcast_codes {
    type: string
    hidden: no
    sql: ${TABLE}.ASSET_GROUP_CLEARCAST_CODES ;;
  }

  dimension: asset_group_id {
    type: string
    hidden: no
    sql: ${TABLE}.ASSET_GROUP_ID ;;
  }

  dimension: asset_id {
    type: string
    hidden: no
    sql: ${TABLE}.ASSET_ID ;;
  }

  measure: autoplay {
    type: sum
    sql: ${TABLE}.AUTOPLAY ;;
  }

  dimension: awsregion {
    type: string
    hidden: no
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
    hidden: no
    sql: ${TABLE}.BROWSER ;;
  }

  measure: bt_cluster_cost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.BT_CLUSTER_COST ;;
  }

  dimension: bt_cluster_cost_attribute {
    type: string
    hidden: no
    sql: ${TABLE}.BT_CLUSTER_COST_ATTRIBUTE ;;
  }

  dimension: bt_cluster_cost_currency {
    type: string
    sql: ${TABLE}.BT_CLUSTER_COST_CURRENCY ;;
  }

  measure: bt_cluster_cost_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.BT_CLUSTER_COST_MARKUP ;;
  }

  dimension: bt_cluster_provider {
    type: string
    hidden: no
    sql: ${TABLE}.BT_CLUSTER_PROVIDER ;;
  }

  dimension: bt_cost_attribute {
    type: string
    hidden: no
    sql: ${TABLE}.BT_COST_ATTRIBUTE ;;
  }

  measure: bt_cost_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.BT_COST_MARKUP ;;
  }

  dimension: btcostcurrency {
    type: string
    sql: ${TABLE}.BTCOSTCURRENCY ;;
  }

  measure: btproviderdatacost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.BTPROVIDERDATACOST ;;
  }

  dimension: btproviderid {
    type: string
    hidden: no
    sql: ${TABLE}.BTPROVIDERID ;;
  }

  measure: clearing_price {
    type: average
    label: "Average Clearing Price"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.CLEARING_PRICE ;;
  }

  measure: click_impressions {
    type: sum
    sql: ${TABLE}.CLICK_IMPRESSIONS ;;
  }

  measure: clicks {
    type: sum
    sql: ${TABLE}.CLICKS ;;
  }

 measure: ctr {
   type: sum
   label: "CTR"
  sql: ${TABLE}.CLICKS *1.0/${TABLE}.CLICK_IMPRESSIONS ;;
 }

  measure: clicktoplay {
    type: sum
    sql: ${TABLE}.CLICKTOPLAY ;;
  }

  dimension: clock_clearcast_codes {
    type: string
    hidden: no
    sql: ${TABLE}.CLOCK_CLEARCAST_CODES ;;
  }

  dimension: clock_number {
    type: string
    hidden: no
    sql: ${TABLE}.CLOCK_NUMBER ;;
  }

  dimension: clusterid {
    type: string
    hidden: no
    sql: ${TABLE}.CLUSTERID ;;
  }

  dimension: companions_media_id {
    type: string
    hidden: no
    sql: ${TABLE}.COMPANIONS_MEDIA_ID ;;
  }

  measure: completed_100 {
    type: sum
    sql: ${TABLE}.COMPLETED_100 ;;
  }

  measure: VCR {
    type: sum
    label: "VCR"
    value_format: "0.00%"
    sql: ${TABLE}.completed_100*1.0/${TABLE}.completed_pct_impressions ;;
  }

  measure: completed_25 {
    type: sum
    sql: ${TABLE}.COMPLETED_25 ;;
  }

  measure: completed_50 {
    type: sum
    sql: ${TABLE}.COMPLETED_50 ;;
  }

  measure: completed_75 {
    type: sum
    sql: ${TABLE}.COMPLETED_75 ;;
  }

  measure: completed_pct_impressions {
    type: sum
    sql: ${TABLE}.COMPLETED_PCT_IMPRESSIONS ;;
  }

  measure: completion_pct_impressions {
    type: sum
    sql: ${TABLE}.COMPLETION_PCT_IMPRESSIONS ;;
  }

  measure: VTR {
    type: sum
    label: "VTR"
    value_format: "0.00%"
    sql: ((${TABLE}.completed_25*.25) + (${TABLE}.completed_50 *.50) + (${TABLE}.completed_75 *.75)
    + (${TABLE}.completed_100 *1.0)) / ${TABLE}.completion_pct_impressions ;;
  }

  measure: cost_units {
    type: sum
    sql: ${TABLE}.COST_UNITS ;;
  }

  dimension: country {
    type: string
    hidden: no
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: daypart {
    type: string
    hidden: no
    sql: ${TABLE}.DAYPART ;;
  }

  dimension: deal_causing_house {
    type: string
    hidden: no
    sql: ${TABLE}.DEAL_CAUSING_HOUSE ;;
  }

  measure: demand_adserving_cost {
    type: sum
    sql: ${TABLE}.DEMAND_ADSERVING_COST ;;
  }

  measure: demand_bt_cluster_cost {
    type: sum
    sql: ${TABLE}.DEMAND_BT_CLUSTER_COST ;;
  }

  measure: demand_bt_cost {
    type: sum
    sql: ${TABLE}.DEMAND_BT_COST ;;
  }

  dimension: demand_currency {
    type: string
    sql: ${TABLE}.DEMAND_CURRENCY ;;
  }

  measure: demand_demo_cost {
    type: sum
    sql: ${TABLE}.DEMAND_DEMO_COST ;;
  }

  measure: demand_payout {
    type: sum
    description: "Payout in Demand Currency"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.DEMAND_PAYOUT ;;
  }

  dimension: demand_platform_client_group_id {
    type: string
    hidden: no
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: demand_platform_client_id {
    type: string
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_ID ;;
  }

  dimension: demand_region_utc_offset {
    type: string
    hidden: no
    sql: ${TABLE}.DEMAND_REGION_UTC_OFFSET ;;
  }

  measure: demand_revenue {
    type: sum
    label: "Net Spend"
    description: "Net Spend in Demand Currency"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.DEMAND_REVENUE ;;
  }

  measure: gross_spend {
    type:  sum
    label: "Gross Spend"
    description: "Gross Spend in Demand Currency: Net Spend * 1 + Agency Fee"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.demand_revenue * (1+(flight_media_details_base.agency_fee)) ;;
  }

  measure: demand_tracking_cost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.DEMAND_TRACKING_COST ;;
  }

  dimension: demand_utc_offset {
    type: string
    hidden: no
    sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
  }

  measure: demo_cost_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.DEMO_COST_MARKUP ;;
  }

  dimension: democostcurrency {
    type: string
    sql: ${TABLE}.DEMOCOSTCURRENCY ;;
  }

  measure: demoproviderdatacost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.DEMOPROVIDERDATACOST ;;
  }

  dimension: demoproviderid {
    type: string
    hidden: no
    sql: ${TABLE}.DEMOPROVIDERID ;;
  }

  dimension: deviceaid {
    type: string
    hidden: no
    sql: ${TABLE}.DEVICEAID ;;
  }

  measure: distinct_clicks {
    type: sum
    sql: ${TABLE}.DISTINCT_CLICKS ;;
  }

  dimension: domain_hash {
    type: string
    hidden: no
    sql: ${TABLE}.DOMAIN_HASH ;;
  }

  dimension: domain_url {
    type: string
    hidden: no
    sql: ${TABLE}.DOMAIN_URL ;;
  }

  dimension: dvid {
    type: string
    hidden: no
    sql: ${TABLE}.DVID ;;
  }

  measure: effective_impressions {
    type: sum
    sql: ${TABLE}.EFFECTIVE_IMPRESSIONS ;;
  }

  measure: effective_units {
    type: sum
    sql: ${TABLE}.EFFECTIVE_UNITS ;;
  }

  dimension: eventtime {
    type: date_second
    hidden: no
    description: "Time of the event stored in UTC"
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension: flight_media_id {
    type: string
    sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
  }

  dimension: gender {
    type: string
    hidden: no
    sql: ${TABLE}.GENDER ;;
  }

  dimension: geo {
    type: string
    hidden: no
    sql: ${TABLE}.GEO ;;
  }

  dimension: house_reason_code {
    type: string
    hidden: no
    sql: ${TABLE}.HOUSE_REASON_CODE ;;
  }

  measure: impressions {
    type: sum
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  dimension: ip {
    type: string
    hidden: no
    sql: ${TABLE}.IP ;;
  }

  measure: is_viewability_measurable {
    type: sum
    sql: ${TABLE}.IS_VIEWABILITY_MEASURABLE ;;
  }

  measure: is_viewability_satisfied {
    type: sum
    sql: ${TABLE}.IS_VIEWABILITY_SATISFIED ;;
  }

  measure: is_viewable_100 {
    type: sum
    sql: ${TABLE}.IS_VIEWABLE_100 ;;
  }

  measure: is_viewable_25 {
    type: sum
    sql: ${TABLE}.IS_VIEWABLE_25 ;;
  }

  measure: is_viewable_50 {
    type: sum
    sql: ${TABLE}.IS_VIEWABLE_50 ;;
  }

  measure: is_viewable_75 {
    type: sum
    sql: ${TABLE}.IS_VIEWABLE_75 ;;
  }

  measure: is_viewable_start {
    type: sum
    sql: ${TABLE}.IS_VIEWABLE_START ;;
  }

  dimension: isp {
    type: string
    hidden: no
    sql: ${TABLE}.ISP ;;
  }

  dimension: language_id {
    type: string
    hidden: no
    sql: ${TABLE}.LANGUAGE_ID ;;
  }

  measure: media_markup {
    type: sum
    sql: ${TABLE}.MEDIA_MARKUP ;;
  }

  measure: media_price {
    type: average
    label: "Average Media Price"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.MEDIA_PRICE ;;
  }

  measure: muted {
    type: sum
    sql: ${TABLE}.MUTED ;;
  }

  dimension: normalized_domain {
    type: string
    hidden: no
    sql: ${TABLE}.NORMALIZED_DOMAIN ;;
  }

  measure: payout {
    type: sum
    description: "Payout in Supply (Payout) Currency"
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.PAYOUT ;;
  }

  dimension: payout_currency {
    type: string
    sql: ${TABLE}.PAYOUT_CURRENCY ;;
  }

  dimension: payout_type {
    type: string
    hidden: no
    sql: ${TABLE}.PAYOUT_TYPE ;;
  }

  dimension: pdata1 {
    type: string
    hidden: no
    sql: ${TABLE}.PDATA1 ;;
  }

  dimension: pdata2 {
    type: string
    hidden: no
    sql: ${TABLE}.PDATA2 ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: platform {
    type: string
    hidden: no
    sql: ${TABLE}.PLATFORM ;;
  }

  measure: platform_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.PLATFORM_MARKUP ;;
  }

  dimension: player_size {
    type: string
    hidden: no
    sql: ${TABLE}.PLAYER_SIZE ;;
  }

  dimension: poc {
    type: string
    hidden: no
    sql: ${TABLE}.POC ;;
  }

  dimension: postalcode {
    type: string
    hidden: no
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: postalcode_provider {
    type: string
    hidden: no
    sql: ${TABLE}.POSTALCODE_PROVIDER ;;
  }

  measure: primary_clicks {
    type: sum
    sql: ${TABLE}.PRIMARY_CLICKS ;;
  }

  dimension: processingid {
    type: string
    hidden: no
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: pub_tracking_id {
    type: string
    hidden: no
    sql: ${TABLE}.PUB_TRACKING_ID ;;
  }

  dimension: referring_url {
    type: string
    hidden: no
    sql: ${TABLE}.REFERRING_URL ;;
  }

  measure: revenue {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.REVENUE ;;
  }

  measure: revenue_cpu {
    type: average
    label: "Average CPU"
    value_format: "#.00;(#.00)"
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

  measure: skipped {
    type: sum
    sql: ${TABLE}.SKIPPED ;;
  }

  dimension: social_ab {
    type: string
    hidden: no
    sql: ${TABLE}.SOCIAL_AB ;;
  }

  dimension: social_abc {
    type: string
    hidden: no
    sql: ${TABLE}.SOCIAL_ABC ;;
  }

  dimension: supply_platform_client_group_id {
    type: string
    hidden: no
    sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: supply_platform_client_id {
    type: string
    hidden: no
    sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_ID ;;
  }

  dimension: supply_region_utc_offset {
    type: string
    hidden: no
    sql: ${TABLE}.SUPPLY_REGION_UTC_OFFSET ;;
  }

  dimension: supply_utc_offset {
    type: string
    hidden: no
    sql: ${TABLE}.SUPPLY_UTC_OFFSET ;;
  }

  measure: tracking_cost {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.TRACKING_COST ;;
  }

  dimension: tracking_cost_currency {
    type: string
    sql: ${TABLE}.TRACKING_COST_CURRENCY ;;
  }

  measure: tracking_cost_markup {
    type: sum
    value_format: "#.00;(#.00)"
    sql: ${TABLE}.TRACKING_COST_MARKUP ;;
  }

  measure: units {
    type: sum
    sql: ${TABLE}.UNITS ;;
  }

  dimension: userid {
    type: string
    hidden: no
    sql: ${TABLE}.USERID ;;
  }

  dimension: version_no {
    type: string
    hidden: no
    sql: ${TABLE}.VERSION_NO ;;
  }

  dimension: viewability_measurable_code {
    type: string
    hidden: no
    sql: ${TABLE}.VIEWABILITY_MEASURABLE_CODE ;;
  }

  measure: count {
    type: count
    hidden: no
    drill_fields: [asset_group.asset_group_id, asset_group.asset_group_name]
  }
}