view: impression_fact {
  label: "Impression Metrics"
  sql_table_name: RAWDB.IMPRESSION_FACT ;;

  dimension: ad_buyer_id {
    type: string
    description: "The ID of the Ad Buyer"
    #hidden: no
    view_label: "Impression Facets"
    sql: ${TABLE}.AD_BUYER_ID ;;
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



  dimension: adid {
    type: string
    hidden: no
    description: "The Ad ID, this is unique by placement and flight media"
    sql: ${TABLE}.ADID ;;
    view_label: "Impression Facets"
  }
  dimension: adserving_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.ADSERVING_COST ;;
  }

  measure: sum_adserving_cost {
    type: sum
    label: "Adserving Costs"
    description: "Total of all Adserving Costs"
    value_format_name: decimal_2
    sql: ${adserving_cost} ;;
  }

  dimension: adserving_cost_currency {
    type: string
    description: "The native currency of the adserving costs"
    sql: ${TABLE}.ADSERVING_COST_CURRENCY ;;
  }

  dimension: adserving_cost_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.ADSERVING_COST_MARKUP ;;
  }
  measure: sum_adserving_cost_markup {
    type: sum
    label: "Adserving Cost Markup"
    description: "Total of all markup costs on adserving"
    value_format_name: decimal_2
    sql: ${adserving_cost_markup} ;;
  }

  dimension: age {
    type: string
    description: "The age of the person who saw the ad, this could be known or unknown"
    sql: ${TABLE}.AGE ;;
    view_label: "Impression Facets"
  }

  dimension: asset_group_clearcast_codes {
    type: string
    description: "The Clearcast Codes for teh asset group"
    hidden: no
    sql: ${TABLE}.ASSET_GROUP_CLEARCAST_CODES ;;
    view_label: "Impression Facets"
  }

  dimension: asset_group_id {
    type: number
    description: "The id of the asset group"
    hidden: no
    sql: ${TABLE}.ASSET_GROUP_ID ;;
    view_label: "Impression Facets"
  }

  dimension: asset_id {
    type: number
    description: "The id of the asset"
    hidden: no
    sql: ${TABLE}.ASSET_ID ;;
    view_label: "Impression Facets"
  }

  dimension: autoplay {
    type: number
    hidden: yes
    sql: ${TABLE}.AUTOPLAY ;;
  }

  measure: sum_autoplay {
    type: sum
    description: "Total of all impressions which were autoplay impressions"
    label: "Autoplay"
    value_format_name: decimal_2
    sql: ${autoplay} ;;
  }


  dimension: awsregionid {
    type: string
    hidden: yes
    sql: ${TABLE}.AWSREGION ;;
  }

  dimension: awsregion {
    type: string
    label: "AWS Region"
    view_label: "Impression Facets"
    description: "The AWS region where the impression was processed."
    #hidden: no
    sql: case when ${awsregionid} = 1 then 'US-East'
          when ${awsregionid} = 2 then 'EMEA'
          when ${awsregionid} = 3 then 'APAC'
          when ${awsregionid} = 5 then 'US-West'
          when ${awsregionid} = 6 then 'China'
          else 'Unknown Region' end;;
  }

  dimension: bid {
    type: number
    hidden: yes
    sql: ${TABLE}.BID ;;
  }

  measure: total_bid {
    type: average
    label: "Average Bid Amount "
    description: "The average amount of the bid price"
    sql: ${bid} ;;
  }
  dimension: bid_currency {
    type: string
    description: "The native currency of the bid amount"
    sql: ${TABLE}.BID_CURRENCY ;;
  }

  dimension: billable_impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.BILLABLE_IMPRESSIONS ;;
  }

  measure: total_billable_impressions {
    type: sum
    label: "Billable Impressions"
    description: "The number of impressions that were billable to the client"
    sql: ${billable_impressions} ;;
  }

  dimension: billable_units {
    type: number
    hidden: yes
    sql: ${TABLE}.BILLABLE_UNITS ;;
  }

  measure: total_billable_units {
    type: sum
    label: "Billable Units"
    description: "The number of units that were billable to the client.  The unit will depend on the CPU type."
    sql: ${billable_units} ;;
  }

  dimension: browser {
    type: string
    #hidden: no
    view_label: "Impression Facets"
    description: "The browser which was used to view the impression"
    sql: prod.public.f_attr_lookup(${TABLE}.BROWSER) ;;
  }

  dimension: bt_cluster_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.BT_CLUSTER_COST ;;
  }

  measure: sum_bt_cluster_cost {
    type: sum
    label: "BT Cluster Costs"
    description: "The total of all BT Cluster Costs"
    value_format_name: decimal_2
    sql: ${bt_cluster_cost} ;;
  }

  dimension: bt_cluster_cost_attribute {
    type: string
    #hidden: no
    view_label: "Impression Facets"
    description: "The Behavioral Targeting Cluster Attribute that was used in serving the impression, if applicable."
    sql: ${TABLE}.BT_CLUSTER_COST_ATTRIBUTE ;;
  }

  dimension: bt_cluster_cost_currency {
    type: string
    description: "The currency of the BT cluster cost"
    sql: ${TABLE}.BT_CLUSTER_COST_CURRENCY ;;
  }

  dimension: bt_cluster_cost_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.BT_CLUSTER_COST_MARKUP ;;
  }

  measure: sum_bt_cluster_cost_markup {
    type: sum
    label: "BT Cluster Cost Markup"
    value_format_name: decimal_2
    description: "The total of all markups on BT cluster costs"
    sql: ${bt_cluster_cost_markup} ;;
  }

  dimension: bt_cluster_provider {
    type: string
    #hidden: no
    view_label: "Impression Facets"
    description: "The Data Provider used in creating the BT Cluster"
    sql: ${TABLE}.BT_CLUSTER_PROVIDER ;;
  }

  dimension: bt_cost_attribute {
    type: string
    #hidden: no
    view_label: "Impression Facets"
    description: "The Behavioral Targeting Attribute that was used in serving the impression, if applicable."
    sql: ${TABLE}.BT_COST_ATTRIBUTE ;;
  }

  dimension: bt_cost_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.BT_COST_MARKUP ;;
  }

  measure: total_bt_cost_markup {
    type: sum
    label: "BT Cost Markup"
    description: "The total markup cost for Behavioral Targeting"
    value_format_name: decimal_2
    sql: ${bt_cost_markup} ;;
  }

  dimension: btcostcurrency {
    type: string
    label: "BT Cost Currency"
    description: "The currency of the BT Cost"
    sql: ${TABLE}.BTCOSTCURRENCY ;;
  }

  dimension: btproviderdatacost {
    type: number
    hidden: yes
    sql: ${TABLE}.BTPROVIDERDATACOST ;;
  }

  measure: sum_btproviderdatacost {
    type: sum
    label: "BT Provider Data Cost"
    description: "The total of data costs owed to the BT provider"
    value_format_name: decimal_2
    sql: ${btproviderdatacost} ;;
  }

  dimension: btproviderid {
    type: string
    #hidden: no
    view_label: "Impression Facets"
    label: "BT Provider ID"
    description: "The ID of the behavioral targeting provider, if applicable."
    sql: ${TABLE}.BTPROVIDERID ;;
  }

  dimension: clearing_price {
    type: number
    hidden: yes
    sql: ${TABLE}.CLEARING_PRICE ;;
  }
  measure: avg_clearing_price {
    type: average
    label: "Average Clearing Price"
    description: "The Average Clearing Price for impressions"
    value_format_name: decimal_2
    sql: ${clearing_price} ;;
  }

  dimension: click_impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.CLICK_IMPRESSIONS ;;
  }


  measure: sum_click_impressions {
    type: sum
    label: "Click Impressions"
    description: "The total of all impressions where clicks are tracked"
    value_format_name: decimal_0
    sql: ${click_impressions} ;;
  }

  dimension: clicks {
    type: number
    hidden: yes
    sql: ${TABLE}.clicks ;;
  }

  measure: sum_clicks {
    type: sum
    label: "Clicks"
    description: "The total of all clicks (where an impression was clicked upon)."
    value_format_name: decimal_0
    sql: ${clicks} ;;
  }


  measure: avg_ctr {
    type: number
    label: "CTR"
    description: "Click Thru Rate - The number of clicks / the number of click impressions"
    value_format_name: percent_2
    sql: COALESCE(1.0 * ${sum_clicks}/NULLIF(${sum_click_impressions},0),0);;
  }

  dimension: clicktoplay {
    type: number
    hidden: yes
    sql: ${TABLE}.CLICKTOPLAY ;;
  }

  measure: sum_clicktoplay {
    type: sum
    label: "Click to Play"
    description: "The total of all impressions that were Click to Play"
    value_format_name: decimal_0
    sql: ${clicktoplay} ;;
  }

  dimension: clock_clearcast_codes {
    type: string
    hidden: yes
    sql: ${TABLE}.CLOCK_CLEARCAST_CODES ;;
  }

  dimension: clock_number {
    type: string
    hidden: yes
    sql: ${TABLE}.CLOCK_NUMBER ;;
  }

  dimension: clusterid {
    type: number
    view_label: "Impression Facets"
    label: "Cluster ID"
    description: "The ID of the cluster used in decisioning, if applicable."
    sql: ${TABLE}.CLUSTERID ;;
  }

  dimension: companions_media_id {
    type: string
    hidden: yes
    sql: ${TABLE}.COMPANIONS_MEDIA_ID ;;
  }

  dimension: completed_100 {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETED_100 ;;
  }

  measure: sum_completed_100 {
    type: sum
    label: "Completed 100"
    description: "The total of all impression which were 100% completed."
    value_format_name: decimal_0
    sql: ${completed_100} ;;
  }

  measure: sum_completed_100_pct {
    type: sum
    label: "Completed 100%"
    description: "The percentage of all impression which were 100% completed."
    value_format_name: percent_2
    sql: COALESCE(1.0 * ${completed_100} / nullif(${completed_pct_impressions},0),0) ;;
  }

  dimension: completed_25 {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETED_25 ;;
  }

  measure: sum_completed_25 {
    type: sum
    label: "Completed 25"
    description: "The total of all impression which were 25% completed."
    value_format_name: decimal_0
    sql: ${completed_25};;
  }

  measure: sum_completed_25_pct {
    type: sum
    label: "Completed 25%"
    description: "The percentage of all impression which were 25% completed."
    value_format_name: percent_2
    sql: COALESCE(1.0* ${completed_25} /nullif(${completion_pct_impressions},0),0);;
  }

  dimension: completed_50 {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETED_50 ;;
  }

  measure: sum_completed_50 {
    type: sum
    label: "Completed 50"
    description: "The total of all impression which were 50% completed."
    value_format_name: decimal_0
    sql: ${completed_50} ;;
  }

  measure: sum_completed_50_pct {
    type: sum
    label: "Completed 50%"
    description: "The percentage of all impression which were 50% completed."
    value_format_name: percent_2
    sql: COALESCE(1.0 * ${completed_50} / nullif(${completion_pct_impressions},0),0) ;;
  }

  dimension: completed_75 {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETED_75 ;;
  }

  measure: sum_completed_75 {
    type: sum
    label: "Completed 75"
    description: "The total of all impression which were 75% completed."
    value_format_name: decimal_0
    sql: ${completed_75} ;;
  }

  measure: sum_completed_75_pct {
    type: sum
    label: "Completed 75%"
    description: "The percentage of all impression which were 75% completed."
    value_format_name: percent_2
    sql: COALESCE(1.0 * ${completed_75} / nullif(${completion_pct_impressions},0),0) ;;
  }

  dimension: completed_pct_impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETED_PCT_IMPRESSIONS ;;
  }

  measure: sum_completed_pct_impressions {
    type: sum
    label: "Completed Percent Impressions"
    description: "The total number of impression where completed (completed 100) is measured."
    value_format_name: decimal_0
    sql: ${completed_pct_impressions} ;;
  }

  dimension: completion_pct_impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.COMPLETION_PCT_IMPRESSIONS ;;
  }

  measure: sum_completion_pct_impressions {
    type: sum
    label: "Completion Percent Impressions"
    description: "The total of impressions where completion percentage is measured.
    This is used in calculating the various completion percentages, and VCR"
    value_format_name: decimal_0
    sql: ${completion_pct_impressions} ;;
  }

  measure: VTR {
    type: sum
    label: "VTR"
    description: "Video Through Rate - the percentage of all impression which were 100% completed."
    value_format_name: percent_2
    sql: COALESCE(1.0 * ${completed_100} / nullif(${completed_pct_impressions},0),0) ;;
  }

  measure: VCR {
    type: sum
    label: "VCR"
    description: "Video Completed Rate - The avarage completion rate of the impression."
    value_format_name: percent_2
    sql: COALESCE(((${completed_25}*.25) + (${completed_50} *.50) + (${completed_75} *.75)
    + (${completed_100} *1.0)) / nullif(${completion_pct_impressions},0),0) ;;
  }

  dimension: cost_units {
    type: number
    hidden: yes
    sql: ${TABLE}.COST_UNITS ;;
    }

  measure: sum_cost_units {
    type: sum
    label: "Cost Units"
    description: "The total units which attribute to the cost of media"
    value_format_name: decimal_0
    sql: ${cost_units} ;;
  }

  dimension: country {
    type: string
    view_label: "Impression Facets"
    description: "The country of the viewer who saw the impression"
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: daypart {
    type: string
    view_label: "Impression Facets"
    description: "The daypart (day and time) of the viewer who saw the impression.
    This is based on the day and time of the viewer."
    sql: ${TABLE}.DAYPART ;;
  }

  dimension: deal_causing_house {
    type: string
    hidden: yes
    sql: ${TABLE}.DEAL_CAUSING_HOUSE ;;
  }

  dimension: demand_adserving_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_ADSERVING_COST ;;
  }

  measure: sum_demand_adserving_cost {
    type: sum
    label: "Adserving Cost - Demand Currency"
    description: "The total adserving costs converted from the native currency to the demand currency."
    value_format_name: decimal_2
    sql: ${demand_adserving_cost} ;;
  }

  dimension: demand_bt_cluster_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_BT_CLUSTER_COST ;;
  }

  measure: sum_demand_bt_cluster_cost {
    type: sum
    label: "BT Cluster Costs - Demand Currency"
    description: "The total BT Cluster costs converted from the native currency to the demand currency."
    value_format_name: decimal_2
    sql: ${demand_bt_cluster_cost};;
  }

  dimension: demand_bt_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_BT_COST ;;
  }

  measure: sum_demand_bt_cost {
    type: sum
    label: "BT Costs - Demand"
    description: "The total Behavioral Targeting costs converted from native currency to the demand currency."
    value_format_name: decimal_2
    sql: ${demand_bt_cost} ;;
  }

  dimension: demand_currency {
    type: string
    description: "The currency of demand partner."
    sql: ${TABLE}.DEMAND_CURRENCY ;;
  }

  dimension: demand_demo_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_DEMO_COST ;;
  }

  measure: sum_demand_demo_cost {
    type: sum
    label: "Demo Cost - Demand"
    description: "The total Demo costs converted from native currency to the demand currency."
    value_format_name: decimal_2
    sql: ${TABLE}.DEMAND_DEMO_COST ;;
  }

  dimension: demand_payout {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_PAYOUT ;;
  }

  measure: sum_demand_payout {
    type: sum
    label: "Media Cost - Demand"
    description: "The total Media Cost converted to the demand currency"
    value_format_name: decimal_2
    sql: ${demand_payout} ;;
  }

  dimension: demand_platform_client_group_id {
    type: string
    view_label: "Impression Facets"
    description: "The ID of the Demand Partners Platform Client Group"
    hidden: yes
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: demand_platform_client_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_ID ;;
  }

  dimension: demand_region_utc_offset {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMAND_REGION_UTC_OFFSET ;;
  }

  dimension: demand_revenue {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_REVENUE ;;
    }

  measure: sum_demand_revenue {
    type: sum
    label: "Net Spend"
    description: "Total Net Spend converted to Demand Currency"
    value_format_name: decimal_2
    sql: ${demand_revenue} ;;
  }

  measure: gross_spend {
    type:  sum
    label: "Gross Spend"
    description: "Total Gross Spend converted to Demand Currency: Net Spend * 1 + Agency Fee"
    value_format_name: decimal_2
    sql: ${demand_revenue} * (1+(${flight_media_details_base.agency_fee}));;
  }

  dimension: demand_tracking_cost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMAND_TRACKING_COST ;;
  }

  measure: sum_demand_tracking_cost {
    type: sum
    label: "Tracking Costs - Demand"
    description: "The total Tracking Costs converted to demand currency"
    value_format: "#.00;(#.00)"
    sql: ${demand_tracking_cost} ;;
  }

  dimension: demand_utc_offset {
    type: number
    label: "Demand Timezone UTC offset"
    description: "The UTC offset of the demand partner. Used to convert UTC time to the demand timezone."
    sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
  }

  dimension: demo_cost_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMO_COST_MARKUP ;;
  }

  measure: sum_demo_cost_markup {
    type: sum
    label: "Demo Cost Markup"
    description: "The total of markups on Demo Costs"
    value_format_name: decimal_2
    sql: ${demo_cost_markup} ;;
  }

  dimension: democostcurrency {
    type: string
    label: "Demo Cost Currency"
    description: "The currency of the Demo Costs"
    sql: ${TABLE}.DEMOCOSTCURRENCY ;;
  }

  dimension: demoproviderdatacost {
    type: number
    hidden: yes
    sql: ${TABLE}.DEMOPROVIDERDATACOST ;;
    }

  measure: sum_demoproviderdatacost {
    type: sum
    label: "Demo Provider Data Cost"
    description: "The total Data Costs of the Data Provider"
    value_format_name: decimal_2
    sql: ${demoproviderdatacost} ;;
  }

  dimension: demoproviderid {
    type: string
    view_label: "Impression Facets"
    label: "Demo Provider ID"
    description: "The ID of the Demo provider"
    hidden: no
    sql: ${TABLE}.DEMOPROVIDERID ;;
  }

  dimension: deviceaid {
    type: string
    view_label: "Impression Facets"
    label: "Device ID"
    description: "The ID of the device where the impression was seen."
    hidden: no
    sql: ${TABLE}.DEVICEAID ;;
  }

  dimension: distinct_clicks {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTINCT_CLICKS ;;
  }
  measure: sum_distinct_clicks {
    type: sum
    label: "Distinct Clicks"
    description: "The total of all distinct clicks"
    sql: ${distinct_clicks} ;;
  }

  dimension: domain_hash {
    type: string
    hidden: yes
    sql: ${TABLE}.DOMAIN_HASH ;;
  }

  dimension: domain_url {
    type: string
    view_label: "Impression Facets"
    label: "Domain URL"
    description: "The domain of the URL (xyz.com) where the impression was seen."
    hidden: no
    sql: ${TABLE}.DOMAIN_URL ;;
  }

  dimension: dvid {
    type: string
    hidden: yes
    sql: ${TABLE}.DVID ;;
  }

  dimension: effective_impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.EFFECTIVE_IMPRESSIONS ;;
  }

  measure: sum_effective_impressions {
    type: sum
    label: "Effective Impression"
    description: "The total of all impression which were in target."
    value_format_name: decimal_2
    sql: ${effective_impressions} ;;
  }

  dimension: effective_units {
    type: number
    hidden: yes
    sql: ${TABLE}.EFFECTIVE_UNITS ;;
  }

  measure: sum_effective_units {
    type: sum
    label: "Effective Units"
    description: "The total number of units which were in target."
    value_format_name: decimal_2
    sql: ${effective_units} ;;
  }

  dimension: eventtime {
    type: date_time
    hidden: yes
    description: "Time of the event stored in UTC"
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension_group: UTC_Date {
    type: time
    label: "UTC"
    view_label: "Dates"
    timeframes: [time,date,month,year]
    description: "The date/time of the impression in UTC"
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension: est_date {
    type: date_second
    hidden: yes
    description: "Time of the event stored in EST"
    sql: dateadd(h,-5,${TABLE}.EVENTTIME) ;;
  }

  dimension_group: EST_Date {
    type: time
    label: "EST"
    view_label: "Dates"
    timeframes: [time,date,month,year]
    description: "The date/time of the impression in EST"
    sql: ${est_date} ;;
  }

  dimension: demand_date {
    type: date_second
    hidden: yes
    description: "Time of the event stored in the demand timezone"
    sql: dateadd(h,${TABLE}.DEMAND_UTC_OFFSET,${TABLE}.EVENTTIME) ;;
  }

  dimension_group: Demand_Date {
    type: time
    label: "Demand"
    view_label: "Dates"
    timeframes: [time,date,month,year]
    description: "The date/time of the impression in the demand timezone"
    sql: ${demand_date} ;;
  }

  dimension: flight_media_id {
    type: string
    #hidden: yes
    view_label: "Impression Facets"
    label: "Flight Media ID"
    description: "The ID of the flight media that was served in the impression."
    sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
  }

  dimension: gender {
    type: string
    view_label: "Impression Facets"
    label: "Gender"
    description: "The gender of the person who saw the impression"
    hidden: no
    sql: ${TABLE}.GENDER ;;
  }

  dimension: geo {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO ;;
  }

  dimension: house_reason_code {
    type: string
    hidden: yes
    sql: ${TABLE}.HOUSE_REASON_CODE ;;
  }

  dimension: impressions {
    type: number
    hidden: yes
    sql: ${TABLE}.IMPRESSIONS ;;
  }

  measure: sum_impressions {
    type: sum
    label: "Impressions"
    description: "The total impressions"
    value_format_name: decimal_0
    sql: ${impressions} ;;
  }

  dimension: ip {
    type: string
    view_label: "Impression Facets"
    label: "IP Address"
    description: "The obfuscated IP address of the user who saw the impression."
    hidden: no
    sql: ${TABLE}.IP ;;
  }

  dimension: is_viewability_measurable {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABILITY_MEASURABLE ;;
  }

  measure: sum_is_viewability_measurable {
    type: sum
    label: "Viewablity Measurable"
    description: "The total of all impressions where viewablity is measurable"
    value_format_name: decimal_0
    sql: ${is_viewability_measurable} ;;
  }

  dimension: is_viewability_satisfied {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABILITY_SATISFIED ;;
  }

  measure: sum_is_viewability_satisfied {
    type: sum
    label: "Viewablity Satisfied"
    description: "The total of all impressions where viewablity criteria was satisfied"
    value_format_name: decimal_0
    sql: ${is_viewability_satisfied} ;;
  }

  dimension: is_viewable_100 {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABLE_100 ;;
  }

  measure: sum_is_viewable_100 {
    type: sum
    label: "Viewable 100"
    description: "The number of impressions that were viewable for 100% of the impression."
    value_format_name: decimal_0
    sql: ${is_viewable_100} ;;
  }

  measure: pct_is_viewable_100 {
    type: sum
    label: "Viewable 100%"
    description: "The percent of impressions that were viewable for 100% of the impression."
    value_format_name: decimal_2
    sql: COALESCE(1.0 * ${is_viewable_100} / nullif(${is_viewability_measurable},0),0);;
  }

  dimension: is_viewable_25 {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABLE_25 ;;
  }

  measure: sum_is_viewable_25 {
    type: sum
    label: "Viewable 25"
    description: "The number of impressions that were viewable for 25% of the impression."
    value_format_name: decimal_0
    sql: ${is_viewable_25} ;;
  }

  measure: pct_is_viewable_25 {
    type: sum
    label: "Viewable 25%"
    description: "The percent of impressions that were viewable for 25% of the impression."
    value_format_name: decimal_2
    sql: COALESCE(1.0 * ${is_viewable_25} / nullif(${is_viewability_measurable},0),0);;
  }

  dimension: is_viewable_50 {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABLE_50 ;;
  }

  measure: sum_is_viewable_50 {
    type: sum
    label: "Viewable 50"
    description: "The number of impressions that were viewable for 50% of the impression."
    value_format_name: decimal_0
    sql: ${is_viewable_50} ;;
  }

  measure: pct_is_viewable_50 {
    type: sum
    label: "Viewable 50%"
    description: "The percent of impressions that were viewable for 50% of the impression."
    value_format_name: decimal_2
    sql:COALESCE( 1.0 * ${is_viewable_50} / nullif(${is_viewability_measurable},0),0);;
  }

  dimension: is_viewable_75 {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABLE_75 ;;
  }

  measure: sum_is_viewable_75 {
    type: sum
    label: "Viewable 75"
    description: "The number of impressions that were viewable for 75% of the impression."
    value_format_name: decimal_0
    sql: ${is_viewable_75} ;;
  }

  measure: pct_is_viewable_75 {
    type: sum
    label: "Viewable 75%"
    description: "The percent of impressions that were viewable for 75% of the impression.."
    value_format_name: decimal_2
    sql:COALESCE( 1.0 * ${is_viewable_75} / nullif(${is_viewability_measurable},0),0);;
  }

  dimension: is_viewable_start {
    type: number
    hidden: yes
    sql: ${TABLE}.IS_VIEWABLE_START ;;
  }

  measure: sum_is_viewable_start {
    type: sum
    label: "Viewable Impressions"
    description: "The number of impressions that were viewable at the start of the impression."
    sql: ${is_viewable_start} ;;
  }

  measure: non_viewable_impressions {
    type: sum
    label: "Non-viewable Impressions"
    description: "The total of imressions where viewablity was measurable but the impressions where not viewable."
    value_format_name: decimal_0
    sql:  ${is_viewability_measurable} - ${is_viewability_satisfied} ;;
  }

  measure: viewablity_rate {
    type: number
    label: "Viewablity Rate"
    description: "For impressions where viewablity is measurable, the percent of impressions where the viewablity criteria is staisfied."
    value_format_name: percent_2
    sql:COALESCE(1.0 * ${is_viewability_satisfied} / nullif(${is_viewability_measurable},0), 0) ;;
  }

  dimension: isp {
    type: string
    view_label: "Impression Facets"
    label: "ISP"
    description: "The Internet Service Provider (ISP) of the user who saw the impression."
    hidden: no
    sql: ${TABLE}.ISP ;;
  }

  dimension: language_id {
    type: string
    hidden: yes
    sql: ${TABLE}.LANGUAGE_ID ;;
  }

  dimension: media_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.MEDIA_MARKUP ;;
}
  measure: sum_media_markup {
    type: sum
    label: "Media Markup"
    description: "The total markup on media."
    value_format_name: decimal_2
    sql: ${media_markup} ;;
  }

  dimension: media_price {
    type: number
    hidden: yes
    sql: ${TABLE}.MEDIA_PRICE ;;
  }

  measure: sum_media_price {
    type: sum
    label: "Media Price"
    value_format_name: decimal_2
    description: "The total price of media."
    sql: ${media_price} ;;
  }

  measure: avg_media_price {
    type: average
    label: "Average Media Price"
    value_format_name: decimal_2
    description: "The average price of all media."
    sql: ${media_price} ;;
  }

  dimension: muted {
    type: number
    hidden: yes
    sql: ${TABLE}.MUTED ;;
  }

  measure: sum_muted {
    type: sum
    label: "Muted"
    description: "The total of all impressions which were muted during viewing of the impression,"
    sql: ${muted} ;;
  }

  dimension: normalized_domain {
    type: string
    label: "Normalized Domain"
    view_label: "Impression Facets"
    description: "The normalized domain of the URL where the impression was viewed."
    sql: ${TABLE}.NORMALIZED_DOMAIN ;;
  }

  dimension: payout {
    type: number
    hidden: yes
    sql: ${TABLE}.PAYOUT ;;
  }

  measure: sum_payout {
    type: sum
    label: "Gross Payout"
    description: "The total amount due to the Publisher for the media in the Publisher's (supply) currency."
    value_format_name: decimal_2
    sql: ${TABLE}.PAYOUT ;;
  }

  dimension: payout_currency {
    type: string
    label: "Payout Currency"
    description: "The Publisher's (supply) currency."
    sql: ${TABLE}.PAYOUT_CURRENCY ;;
  }

  dimension: payout_type {
    type: string
    hidden: no
    view_label: "Impression Facets"
    label: "Payout Type"
    description: "The type of payout to the Publisher."
    sql: ${TABLE}.PAYOUT_TYPE ;;
  }

  dimension: pdata1 {
    type: string
    view_label: "Impression Facets"
    label: "PD1"
    description: "Passed Data 1 - A text field that allows the publisher to pass data back when serving the impression."
    hidden: no
    sql: ${TABLE}.PDATA1 ;;
  }

  dimension: pdata2 {
    type: string
    view_label: "Impression Facets"
    label: "PD2"
    description: "Passed Data 2 - A second text field that allows the publisher to pass data back when serving the impression."
    hidden: no
    sql: ${TABLE}.PDATA2 ;;
  }

  dimension: placement_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: platform {
    type: string
    hidden: yes
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: platform_markup {
    type: number
    hidden: yes
    sql: ${TABLE}.PLATFORM_MARKUP ;;
  }

  measure: sum_platform_markup {
    type: sum
    label: "Platform Markup"
    value_format_name: decimal_2
    description: "The total platform markup amount"
    sql: ${platform_markup} ;;
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
    type: zipcode
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
