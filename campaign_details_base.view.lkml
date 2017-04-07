view: campaign_details_base {
  sql_table_name: DIM.CAMPAIGN_DETAILS_BASE;;
  label: "Campaign"

  dimension: advertiser_brand_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ADVERTISER_BRAND_ID ;;
  }

  dimension: audit_vendor {
    type: string
    label: "Audit Vendor"
    description: "The name of the Audit Vendor for the Camapign, if applicable."
    sql: ${TABLE}.AUDIT_VENDOR ;;
  }

  dimension: audit_vendor_id {
    type: string
    hidden: yes
    sql: ${TABLE}.AUDIT_VENDOR_ID ;;
  }

  dimension: begin_datetime_local {
    type: date
    label: "Begin Time - Local"
    description: "The start time of the Campaign in the Campaign's timezone."
    sql: ${TABLE}.BEGIN_DATETIME_LOCAL ;;
  }

  dimension: business_hemisphere_description {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_HEMISPHERE_DESCRIPTION ;;
  }

  dimension: business_hemisphere_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_HEMISPHERE_ID ;;
  }

  dimension: business_region_currency_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_CURRENCY_ID ;;
  }

  dimension: business_region_description {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_DESCRIPTION ;;
  }

  dimension: business_region_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_ID ;;
  }

  dimension: buying_market_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUYING_MARKET_ID ;;
  }

  dimension: campaign_active {
    type: yesno
    label: "Campaign is Active"
    description: "A yes/no indicator if the campaign is active."
    sql: ${TABLE}.CAMPAIGN_ACTIVE ;;
  }

  dimension: campaign_end_date {
    type: date
    label: "Campaign End Date"
    description: "The end date of the campaign in UTC."
    sql: ${TABLE}.CAMPAIGN_END_DATE ;;
  }

  dimension: campaign_id {
    type: number
    label: "Campaign ID"
    description: "The system id of the Campaign,"
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_name {
    type: string
    label: "Campaign Name"
    sql: ${TABLE}.CAMPAIGN_NAME ;;
  }

  dimension: campaign_network_description {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_NETWORK_DESCRIPTION ;;
  }

  dimension: campaign_network_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_NETWORK_ID ;;
  }

  dimension: campaign_objective {
    type: string
    label: "Camapign Objective"
    description: "The objective of the campaign."
    sql: ${TABLE}.CAMPAIGN_OBJECTIVE ;;
  }

  dimension: campaign_start_date {
    type: date
    label: "Campaign Start Date"
    description: "The start date of the campaign in UTC>"
    sql: ${TABLE}.CAMPAIGN_START_DATE ;;
  }

  dimension: campaign_status_description {
    type: string
    label: "Camapign Status"
    description: "The current status of the campaign (i.e. running, paused, ended, etc.)"
    sql: ${TABLE}.CAMPAIGN_STATUS_DESCRIPTION ;;
  }

  dimension: campaign_status_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_STATUS_ID ;;
  }

  dimension: campaign_targeting_type {
    type: string
    label: "Campaign Targeting Type"
    description: "The type of targeting for the campaign"
    sql: ${TABLE}.CAMPAIGN_TARGETING_TYPE ;;
  }

  dimension: campaign_type_description {
    type: string
    label: "Campaign Type"
    sql: ${TABLE}.CAMPAIGN_TYPE_DESCRIPTION ;;
  }

  dimension: campaign_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_TYPE_ID ;;
  }

  dimension: changedon {
    type: string
    hidden: yes
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: checksum_value {
    type: string
    hidden: yes
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: client_non_revenue_generating {
    type: yesno
    label: "Non-revenue generating"
    description: "A yes/no indicator if the campaign is non revenue generating."
    sql: ${TABLE}.CLIENT_NON_REVENUE_GENERATING ;;
  }

  dimension: contracted_addedvalue_units {
    type: number

    sql: ${TABLE}.CONTRACTED_ADDEDVALUE_UNITS ;;
  }

  dimension: contracted_budget {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.CONTRACTED_BUDGET ;;
  }

  dimension: contracted_cpu {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.CONTRACTED_CPU ;;
  }

  dimension: contracted_units {
    type: number
    value_format_name: decimal_0
    sql: ${TABLE}.CONTRACTED_UNITS ;;
  }

  dimension: cpu {
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.CPU ;;
  }

  dimension: cpu_type_description {
    type: string
    sql: ${TABLE}.CPU_TYPE_DESCRIPTION ;;
  }

  dimension: cpu_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CPU_TYPE_ID ;;
  }

  dimension: createdon {
    type: string
    hidden: yes
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: customer_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_io_number {
    type: string
    sql: ${TABLE}.CUSTOMER_IO_NUMBER ;;
  }

  dimension: deal_placement_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DEAL_PLACEMENT_ID ;;
  }

  dimension: demo_composition_vendor_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMO_COMPOSITION_VENDOR_ID ;;
  }

  dimension: demo_segment_group_description {
    type: string
    sql: ${TABLE}.DEMO_SEGMENT_GROUP_DESCRIPTION ;;
  }

  dimension: demo_segment_group_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMO_SEGMENT_GROUP_ID ;;
  }

  dimension: device_type_description {
    type: string
    sql: ${TABLE}.DEVICE_TYPE_DESCRIPTION ;;
  }

  dimension: device_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DEVICE_TYPE_ID ;;
  }

  dimension: end_datetime_local {
    type: date
    sql: ${TABLE}.END_DATETIME_LOCAL ;;
  }

  dimension: format_type_description {
    type: string
    sql: ${TABLE}.FORMAT_TYPE_DESCRIPTION ;;
  }

  dimension: format_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.FORMAT_TYPE_ID ;;
  }

  dimension: grp_audience_size {
    type: number
    sql: ${TABLE}.GRP_AUDIENCE_SIZE ;;
  }

  dimension: insertion_order_id {
    type: number
    hidden: yes
    sql: ${TABLE}.INSERTION_ORDER_ID ;;
  }

  dimension: is_preemptible {
    type: yesno
    sql: ${TABLE}.IS_PREEMPTIBLE ;;
  }

  dimension: is_revenue_generating {
    type: yesno
    sql: ${TABLE}.IS_REVENUE_GENERATING ;;
  }

  dimension: is_running {
    type: yesno
    sql: ${TABLE}.IS_RUNNING ;;
  }

  dimension: is_test_campaign {
    type: yesno
    sql: ${TABLE}.IS_TEST_CAMPAIGN ;;
  }

  dimension: isfiller {
    type: yesno
    sql: ${TABLE}.ISFILLER ;;
  }

  dimension: isguaranteed {
    type: yesno
    sql: ${TABLE}.ISGUARANTEED ;;
  }

  dimension: office_id {
    type: number
    hidden: yes
    sql: ${TABLE}.OFFICE_ID ;;
  }

  dimension: office_name {
    type: string
    sql: ${TABLE}.OFFICE_NAME ;;
  }

  dimension: pl_plan_id {
    type: number
    label: "Plan ID"
    description: "The system ID of the Plan"
    #hidden: yes
    view_label: "Plan"
    sql: ${TABLE}.PL_PLAN_ID ;;
  }

  dimension: pl_plan_name {
    type: string
    label: "Plan"
    description: "The name of the Plan,"
    #hidden: yes
    view_label: "Plan"
    sql: ${TABLE}.PL_PLAN_NAME ;;
  }

  dimension: plan_culture {
    type: string
    hidden: yes
    sql: ${TABLE}.PLAN_CULTURE ;;
  }

  dimension: plan_end_date {
    type: date
    label: "Plan End Date"
    view_label: "Plan"
    description: "The end date of the Plan in UTC."
    sql: ${TABLE}.PLAN_END_DATE ;;
  }

  dimension: plan_start_date {
    type: date
    view_label: "Plan"
    label: "Plan Start Date"
    description: "The start date of the plan in UTC."
    sql: ${TABLE}.PLAN_START_DATE ;;
  }

  dimension: planned_spend {
    type: number
    label: "Camapign Planned Spend"
    description: "The amount of planned spend for the campaign,"
    value_format_name: decimal_2
    sql: ${TABLE}.PLANNED_SPEND ;;
  }

  dimension: platform_client_description {
    type: string
    view_label: "Demand Platform Client"
    label: "Platform Client"
    description: "The name of the Platform Client"
    sql: ${TABLE}.PLATFORM_CLIENT_DESCRIPTION ;;
  }

  dimension: platform_client_group_description {
    type: string
    label: "Platform Client Group"
    view_label: "Demand Platform Client"
    description: "A logical grouping of platform clients."
    sql: ${TABLE}.PLATFORM_CLIENT_GROUP_DESCRIPTION ;;
  }

  dimension: platform_client_group_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: platform_client_id {
    type: number
    view_label: "Demand Platform Client"
    label: "Platform Client ID"
    description: "The system ID of the Platform Client"
    # hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_ID ;;
  }

  dimension: pricing_vendor_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PRICING_VENDOR_ID ;;
  }

  dimension: reporting_business_unit_description {
    type: string
    view_label: "Demand Platform Client"
    label: "Reporting Business Unit"
    description: "A grouping of platform clients derived for and used in reporting."
    sql: ${TABLE}.REPORTING_BUSINESS_UNIT_DESCRIPTION ;;
  }

  dimension: reporting_business_unit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.REPORTING_BUSINESS_UNIT_ID ;;
  }

  dimension: spread_fraction {
    type: number
    hidden: yes
    sql: ${TABLE}.SPREAD_FRACTION ;;
  }

  dimension: timezone_id {
    type: number
    label: "Timezone"
    hidden: yes
    sql: ${TABLE}.TIMEZONE_ID ;;
  }

  dimension: trp_audience_size {
    type: number
    label: "TRP Audience"
    description: "The total size of the audience available for the selected targeting (targeted reach)."
    sql: ${TABLE}.TRP_AUDIENCE_SIZE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      campaign_name,
      pl_plan_name,
      office_name,
      platform_client.platform_client_id,
      platform_client.platform_type_name,
      platform_client.office_name,
      pl_plan.pl_plan_id,
      pl_plan.plan_name,
      demo_segment_group.demo_segment_group_id,
      buying_market.buying_market_id,
      buying_market.buying_market_name,
      buying_market.office_name,
      timezone.timezone_id
    ]
  }
}
