view: core_rollup {
  sql_table_name: RAWDB.CORE_ROLLUP ;;

  dimension: ad_buyer {
    type: string
    hidden: yes
    sql: ${TABLE}.AD_BUYER ;;
  }

  dimension: addon_product_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.ADDON_PRODUCT_COST ;;
  }

  measure: total_addon_product_cost {
    type: sum
    label: "Addon Product Cost"
    description: "The total of all costs for add-ons"
    value_format_name: decimal_2
    sql: ${addon_product_cost} ;;
  }

  measure: avg_addon_product_cost {
    type: average
    label: "Average Addon Product Costs"
    description: "The average of all costs for add-ons"
    value_format_name: decimal_2
    sql: ${addon_product_cost} ;;
  }



  dimension: adserver_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ADSERVER_CODE ;;
  }

  dimension: adserving_cost {
    type: string
    sql: ${TABLE}.ADSERVING_COST ;;
  }

  dimension: adserving_cost_currency {
    type: string
    sql: ${TABLE}.ADSERVING_COST_CURRENCY ;;
  }

  dimension: adserving_cost_markup {
    type: string
    sql: ${TABLE}.ADSERVING_COST_MARKUP ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: age_description {
    type: string
    sql: ${TABLE}.AGE_DESCRIPTION ;;
  }

  dimension: agency_fee {
    type: string
    sql: ${TABLE}.AGENCY_FEE ;;
  }

  dimension: autoplay {
    type: string
    sql: ${TABLE}.AUTOPLAY ;;
  }

  dimension: bid {
    type: string
    sql: ${TABLE}.BID ;;
  }

  dimension: bid_currency {
    type: string
    sql: ${TABLE}.BID_CURRENCY ;;
  }

  dimension: bid_requests_filled {
    type: string
    sql: ${TABLE}.BID_REQUESTS_FILLED ;;
  }

  dimension: bids {
    type: string
    sql: ${TABLE}.BIDS ;;
  }

  dimension: billable_impressions {
    type: string
    sql: ${TABLE}.BILLABLE_IMPRESSIONS ;;
  }

  dimension: billable_units {
    type: string
    sql: ${TABLE}.BILLABLE_UNITS ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.BROWSER ;;
  }

  dimension: bt_cluster_cost {
    type: string
    sql: ${TABLE}.BT_CLUSTER_COST ;;
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

  dimension: bt_cost_markup {
    type: string
    sql: ${TABLE}.BT_COST_MARKUP ;;
  }

  dimension: bt_data_cost {
    type: string
    sql: ${TABLE}.BT_DATA_COST ;;
  }

  dimension: bt_data_cost_currency {
    type: string
    sql: ${TABLE}.BT_DATA_COST_CURRENCY ;;
  }

  dimension: bt_provider {
    type: string
    sql: ${TABLE}.BT_PROVIDER ;;
  }

  dimension: buyer_requests {
    type: string
    sql: ${TABLE}.BUYER_REQUESTS ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.CAMPAIGN ;;
  }

  dimension: clearing_price {
    type: string
    sql: ${TABLE}.CLEARING_PRICE ;;
  }

  dimension: clearing_price_currency {
    type: string
    sql: ${TABLE}.CLEARING_PRICE_CURRENCY ;;
  }

  dimension: click_impressions {
    type: string
    sql: ${TABLE}.CLICK_IMPRESSIONS ;;
  }

  dimension: click_to_play {
    type: string
    sql: ${TABLE}.CLICK_TO_PLAY ;;
  }

  dimension: clicks {
    type: string
    sql: ${TABLE}.CLICKS ;;
  }

  dimension: companion_impressions {
    type: string
    sql: ${TABLE}.COMPANION_IMPRESSIONS ;;
  }

  dimension: companion_media {
    type: string
    sql: ${TABLE}.COMPANION_MEDIA ;;
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

  dimension: content_verification_result {
    type: string
    sql: ${TABLE}.CONTENT_VERIFICATION_RESULT ;;
  }

  dimension: cost_units {
    type: string
    sql: ${TABLE}.COST_UNITS ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: country_description {
    type: string
    sql: ${TABLE}.COUNTRY_DESCRIPTION ;;
  }

  dimension: day_abbreviation {
    type: string
    sql: ${TABLE}.DAY_ABBREVIATION ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: daypart {
    type: string
    sql: ${TABLE}.DAYPART ;;
  }

  dimension: daypart_description {
    type: string
    sql: ${TABLE}.DAYPART_DESCRIPTION ;;
  }

  dimension: demand_adserving_cost {
    type: string
    sql: ${TABLE}.DEMAND_ADSERVING_COST ;;
  }

  dimension: demand_bt_cluster_cost {
    type: string
    sql: ${TABLE}.DEMAND_BT_CLUSTER_COST ;;
  }

  dimension: demand_bt_provider_cost {
    type: string
    sql: ${TABLE}.DEMAND_BT_PROVIDER_COST ;;
  }

  dimension: demand_currency {
    type: string
    sql: ${TABLE}.DEMAND_CURRENCY ;;
  }

  dimension: demand_date {
    type: string
    sql: ${TABLE}.DEMAND_DATE ;;
  }

  dimension: demand_demo_provider_cost {
    type: string
    sql: ${TABLE}.DEMAND_DEMO_PROVIDER_COST ;;
  }

  dimension: demand_gbp_exchange_rate {
    type: string
    sql: ${TABLE}.DEMAND_GBP_EXCHANGE_RATE ;;
  }

  dimension: demand_payout {
    type: string
    sql: ${TABLE}.DEMAND_PAYOUT ;;
  }

  dimension: demand_region_exchange_rate {
    type: string
    sql: ${TABLE}.DEMAND_REGION_EXCHANGE_RATE ;;
  }

  dimension: demand_revenue {
    type: string
    sql: ${TABLE}.DEMAND_REVENUE ;;
  }

  dimension: demand_timezone {
    type: string
    sql: ${TABLE}.DEMAND_TIMEZONE ;;
  }

  dimension: demand_tracking_cost {
    type: string
    sql: ${TABLE}.DEMAND_TRACKING_COST ;;
  }

  dimension: demand_usd_exchange_rate {
    type: string
    sql: ${TABLE}.DEMAND_USD_EXCHANGE_RATE ;;
  }

  dimension: demo_markup {
    type: string
    sql: ${TABLE}.DEMO_MARKUP ;;
  }

  dimension: demo_provider {
    type: string
    sql: ${TABLE}.DEMO_PROVIDER ;;
  }

  dimension: demo_provider_cost_currency {
    type: string
    sql: ${TABLE}.DEMO_PROVIDER_COST_CURRENCY ;;
  }

  dimension: demo_provider_data_cost {
    type: string
    sql: ${TABLE}.DEMO_PROVIDER_DATA_COST ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.DEVICE ;;
  }

  dimension: distinct_clicks {
    type: string
    sql: ${TABLE}.DISTINCT_CLICKS ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
  }

  dimension: dma_description {
    type: string
    sql: ${TABLE}.DMA_DESCRIPTION ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.DOMAIN ;;
  }

  dimension: domain_hash {
    type: string
    sql: ${TABLE}.DOMAIN_HASH ;;
  }

  dimension: domain_url {
    type: string
    sql: ${TABLE}.DOMAIN_URL ;;
  }

  dimension: effective_impressions {
    type: string
    sql: ${TABLE}.EFFECTIVE_IMPRESSIONS ;;
  }

  dimension: effective_units {
    type: string
    sql: ${TABLE}.EFFECTIVE_UNITS ;;
  }

  dimension: est_date {
    type: string
    sql: ${TABLE}.EST_DATE ;;
  }

  dimension: exchange_fee {
    type: string
    sql: ${TABLE}.EXCHANGE_FEE ;;
  }

  dimension: flight {
    type: string
    sql: ${TABLE}.FLIGHT ;;
  }

  dimension: flight_media {
    type: string
    sql: ${TABLE}.FLIGHT_MEDIA ;;
  }

  dimension: floor_price {
    type: string
    sql: ${TABLE}.FLOOR_PRICE ;;
  }

  dimension: gbp_exchange_rate {
    type: string
    sql: ${TABLE}.GBP_EXCHANGE_RATE ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: gender_description {
    type: string
    sql: ${TABLE}.GENDER_DESCRIPTION ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.GEO ;;
  }

  dimension: gmt_date {
    type: string
    sql: ${TABLE}.GMT_DATE ;;
  }

  dimension: hour_description {
    type: string
    sql: ${TABLE}.HOUR_DESCRIPTION ;;
  }

  dimension: hour_of_day {
    type: string
    sql: ${TABLE}.HOUR_OF_DAY ;;
  }

  dimension: impressions {
    type: string
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  dimension: inferred_age {
    type: string
    sql: ${TABLE}.INFERRED_AGE ;;
  }

  dimension: inferred_age_description {
    type: string
    sql: ${TABLE}.INFERRED_AGE_DESCRIPTION ;;
  }

  dimension: inferred_gender {
    type: string
    sql: ${TABLE}.INFERRED_GENDER ;;
  }

  dimension: inferred_gender_description {
    type: string
    sql: ${TABLE}.INFERRED_GENDER_DESCRIPTION ;;
  }

  dimension: is_known_demo {
    type: string
    sql: ${TABLE}.IS_KNOWN_DEMO ;;
  }

  dimension: is_postalcode_targeted {
    type: string
    sql: ${TABLE}.IS_POSTALCODE_TARGETED ;;
  }

  dimension: is_viewability_measurable {
    type: string
    sql: ${TABLE}.IS_VIEWABILITY_MEASURABLE ;;
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

  dimension: pc_impressions {
    type: string
    sql: ${TABLE}.PC_IMPRESSIONS ;;
  }

  dimension: pdata1 {
    type: string
    sql: ${TABLE}.PDATA1 ;;
  }

  dimension: pdata2 {
    type: string
    sql: ${TABLE}.PDATA2 ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.PLACEMENT ;;
  }

  dimension: placement_date {
    type: string
    sql: ${TABLE}.PLACEMENT_DATE ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: platform_client_id {
    type: string
    sql: ${TABLE}.PLATFORM_CLIENT_ID ;;
  }

  dimension: platform_markup {
    type: string
    sql: ${TABLE}.PLATFORM_MARKUP ;;
  }

  dimension: player_size {
    type: string
    sql: ${TABLE}.PLAYER_SIZE ;;
  }

  dimension: poc_impressions {
    type: string
    sql: ${TABLE}.POC_IMPRESSIONS ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: postalcode_attribute {
    type: string
    sql: ${TABLE}.POSTALCODE_ATTRIBUTE ;;
  }

  dimension: postalcode_provider {
    type: string
    sql: ${TABLE}.POSTALCODE_PROVIDER ;;
  }

  dimension: preferred_exchange_rate {
    type: string
    sql: ${TABLE}.PREFERRED_EXCHANGE_RATE ;;
  }

  dimension: primary_clicks {
    type: string
    sql: ${TABLE}.PRIMARY_CLICKS ;;
  }

  dimension: publisher_requests {
    type: number
    hidden: yes
    sql: ${TABLE}.PUBLISHER_REQUESTS ;;
  }

  measure: sum_publisher_requests {
    label: "Requests"
    type: sum
    description: "Total requests from the publisher."
    value_format_name: decimal_0
    sql: ${publisher_requests} ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: region_date {
    type: string
    sql: ${TABLE}.REGION_DATE ;;
  }

  dimension: region_description {
    type: string
    sql: ${TABLE}.REGION_DESCRIPTION ;;
  }

  dimension: region_exchange_rate {
    type: string
    sql: ${TABLE}.REGION_EXCHANGE_RATE ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.REVENUE ;;
  }

  dimension: revenue_currency {
    type: string
    sql: ${TABLE}.REVENUE_CURRENCY ;;
  }

  dimension: skipped {
    type: string
    sql: ${TABLE}.SKIPPED ;;
  }

  dimension: social_ab_impressions {
    type: string
    sql: ${TABLE}.SOCIAL_AB_IMPRESSIONS ;;
  }

  dimension: social_abc_impressions {
    type: string
    sql: ${TABLE}.SOCIAL_ABC_IMPRESSIONS ;;
  }

  dimension: supply_date {
    type: string
    sql: ${TABLE}.SUPPLY_DATE ;;
  }

  dimension: supply_exchange_fee {
    type: string
    sql: ${TABLE}.SUPPLY_EXCHANGE_FEE ;;
  }

  dimension: supply_exchange_rate {
    type: string
    sql: ${TABLE}.SUPPLY_EXCHANGE_RATE ;;
  }

  dimension: supply_payout {
    type: string
    sql: ${TABLE}.SUPPLY_PAYOUT ;;
  }

  dimension: supply_revenue {
    type: string
    sql: ${TABLE}.SUPPLY_REVENUE ;;
  }

  dimension: supply_timezone {
    type: string
    sql: ${TABLE}.SUPPLY_TIMEZONE ;;
  }

  dimension: third_party_viewable {
    type: string
    sql: ${TABLE}.THIRD_PARTY_VIEWABLE ;;
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

  dimension: transparancy_type {
    type: string
    sql: ${TABLE}.TRANSPARANCY_TYPE ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.UNITS ;;
  }

  dimension: usd_exchange_rate {
    type: string
    sql: ${TABLE}.USD_EXCHANGE_RATE ;;
  }

  dimension: version_no {
    type: string
    sql: ${TABLE}.VERSION_NO ;;
  }

  dimension: videology_viewable {
    type: string
    sql: ${TABLE}.VIDEOLOGY_VIEWABLE ;;
  }

  dimension: viewability_measurable_code {
    type: string
    sql: ${TABLE}.VIEWABILITY_MEASURABLE_CODE ;;
  }

  dimension: winning_bid {
    type: string
    sql: ${TABLE}.WINNING_BID ;;
  }

  dimension: winning_bids {
    type: string
    sql: ${TABLE}.WINNING_BIDS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
