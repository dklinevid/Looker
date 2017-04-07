view: placement_details_base {
  label: "Placement"
  sql_table_name: DIM.PLACEMENT_DETAILS_BASE ;;

  dimension: account_executive_name {
    type: string
    view_label: "Partner"
    sql: ${TABLE}.ACCOUNT_EXECUTIVE_NAME ;;
  }

  dimension: accounting_subsidiary_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ACCOUNTING_SUBSIDIARY_ID ;;
  }

  dimension: audit_factor {
    type: string
    hidden: yes
    sql: ${TABLE}.AUDIT_FACTOR ;;
  }

  dimension: business_region {
    type: string
    view_label: "Partner"
    label: "Partner Business Region"
    description: "The business region of the Supply Partner"
    sql: ${TABLE}.BUSINESS_REGION ;;
  }

  dimension: business_region_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_ID ;;
  }

  dimension: buy_source {
    type: string
    sql: ${TABLE}.BUY_SOURCE ;;
  }

  dimension: buy_source_id {
    type: string
    sql: ${TABLE}.BUY_SOURCE_ID ;;
  }

  dimension: buy_type {
    type: string
    sql: ${TABLE}.BUY_TYPE ;;
  }

  dimension: buy_type_id {
    type: string
    sql: ${TABLE}.BUY_TYPE_ID ;;
  }

  dimension: changedon {
    type: string
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: checksum_value {
    type: string
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: contracting_party {
    type: string
    sql: ${TABLE}.CONTRACTING_PARTY ;;
  }

  dimension: contracting_party_id {
    type: string
    sql: ${TABLE}.CONTRACTING_PARTY_ID ;;
  }

  dimension: default_agency_fee {
    type: string
    sql: ${TABLE}.DEFAULT_AGENCY_FEE ;;
  }

  dimension: default_exchange_fee {
    type: string
    sql: ${TABLE}.DEFAULT_EXCHANGE_FEE ;;
  }

  dimension: delivery_cap {
    type: string
    sql: ${TABLE}.DELIVERY_CAP ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.DEVICE_TYPE ;;
  }

  dimension: device_type_id {
    type: string
    sql: ${TABLE}.DEVICE_TYPE_ID ;;
  }

  dimension: format_type {
    type: string
    sql: ${TABLE}.FORMAT_TYPE ;;
  }

  dimension: format_type_id {
    type: string
    sql: ${TABLE}.FORMAT_TYPE_ID ;;
  }

  dimension: has_click_ping {
    type: yesno
    sql: ${TABLE}.HAS_CLICK_PING ;;
  }

  dimension: has_end_ping {
    type: yesno
    sql: ${TABLE}.HAS_END_PING ;;
  }

  dimension: has_quartile_pings {
    type: yesno
    sql: ${TABLE}.HAS_QUARTILE_PINGS ;;
  }

  dimension: has_whitelist {
    type: yesno
    sql: ${TABLE}.HAS_WHITELIST ;;
  }

  dimension: inventory_parent {
    type: string
    sql: ${TABLE}.INVENTORY_PARENT ;;
  }

  dimension: inventory_source_description {
    type: string
    sql: ${TABLE}.INVENTORY_SOURCE_DESCRIPTION ;;
  }

  dimension: inventory_source_id {
    type: string
    sql: ${TABLE}.INVENTORY_SOURCE_ID ;;
  }

  dimension: inventory_source_type {
    type: string
    sql: ${TABLE}.INVENTORY_SOURCE_TYPE ;;
  }

  dimension: inventory_type {
    type: string
    sql: ${TABLE}.INVENTORY_TYPE ;;
  }

  dimension: inventory_type_id {
    type: string
    sql: ${TABLE}.INVENTORY_TYPE_ID ;;
  }

  dimension: is_matchbuy {
    type: yesno
    sql: ${TABLE}.IS_MATCHBUY ;;
  }

  dimension: is_network_served {
    type: yesno
    sql: ${TABLE}.IS_NETWORK_SERVED ;;
  }

  dimension: is_test_placement {
    type: yesno
    sql: ${TABLE}.IS_TEST_PLACEMENT ;;
  }

  dimension: is_videology_stats_billing {
    type: yesno
    sql: ${TABLE}.IS_VIDEOLOGY_STATS_BILLING ;;
  }

  dimension: is_vmx_placement {
    type: yesno
    sql: ${TABLE}.IS_VMX_PLACEMENT ;;
  }

  dimension: liability {
    type: yesno
    sql: ${TABLE}.LIABILITY ;;
  }

  dimension: long_placement_name {
    type: string
    sql: ${TABLE}.LONG_PLACEMENT_NAME ;;
  }

  dimension: partner_country {
    type: string
    sql: ${TABLE}.PARTNER_COUNTRY ;;
  }

  dimension: partner_country_id {
    type: string
    sql: ${TABLE}.PARTNER_COUNTRY_ID ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.PARTNER_ID ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.PARTNER_NAME ;;
  }

  dimension: partner_office {
    type: string
    sql: ${TABLE}.PARTNER_OFFICE ;;
  }

  dimension: partner_office_id {
    type: string
    sql: ${TABLE}.PARTNER_OFFICE_ID ;;
  }

  dimension: partner_timezone_id {
    type: string
    sql: ${TABLE}.PARTNER_TIMEZONE_ID ;;
  }

  dimension: passback_allowed {
    type: yesno
    sql: ${TABLE}.PASSBACK_ALLOWED ;;
  }

  dimension: placement_active {
    type: yesno
    sql: ${TABLE}.PLACEMENT_ACTIVE ;;
  }

  dimension: placement_alias {
    type: string
    sql: ${TABLE}.PLACEMENT_ALIAS ;;
  }

  dimension: placement_country {
    type: string
    sql: ${TABLE}.PLACEMENT_COUNTRY ;;
  }

  dimension: placement_country_id {
    type: string
    sql: ${TABLE}.PLACEMENT_COUNTRY_ID ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: placement_integration_type {
    type: string
    sql: ${TABLE}.PLACEMENT_INTEGRATION_TYPE ;;
  }

  dimension: placement_integration_type_id {
    type: string
    # hidden: no
    sql: ${TABLE}.PLACEMENT_INTEGRATION_TYPE_ID ;;
  }

  dimension: placement_inventory_medium_type {
    type: string
    sql: ${TABLE}.PLACEMENT_INVENTORY_MEDIUM_TYPE ;;
  }

  dimension: placement_inventory_medium_type_id {
    type: string
    sql: ${TABLE}.PLACEMENT_INVENTORY_MEDIUM_TYPE_ID ;;
  }

  dimension: placement_inventory_type {
    type: string
    sql: ${TABLE}.PLACEMENT_INVENTORY_TYPE ;;
  }

  dimension: placement_inventory_type_id {
    type: string
    # hidden: no
    sql: ${TABLE}.PLACEMENT_INVENTORY_TYPE_ID ;;
  }

  dimension: placement_is_paused {
    type: yesno
    sql: ${TABLE}.PLACEMENT_IS_PAUSED ;;
  }

  dimension: placement_name {
    type: string
    sql: ${TABLE}.PLACEMENT_NAME ;;
  }

  dimension: placement_quality {
    type: string
    sql: ${TABLE}.PLACEMENT_QUALITY ;;
  }

  dimension: placement_quality_id {
    type: string
    sql: ${TABLE}.PLACEMENT_QUALITY_ID ;;
  }

  dimension: placement_site_genre {
    type: string
    sql: ${TABLE}.PLACEMENT_SITE_GENRE ;;
  }

  dimension: placement_site_genre_id {
    type: string
    sql: ${TABLE}.PLACEMENT_SITE_GENRE_ID ;;
  }

  dimension: placement_status {
    type: string
    sql: ${TABLE}.PLACEMENT_STATUS ;;
  }

  dimension: placement_status_id {
    type: string
    # hidden: no
    sql: ${TABLE}.PLACEMENT_STATUS_ID ;;
  }

  dimension: placement_timezone_id {
    type: string
    sql: ${TABLE}.PLACEMENT_TIMEZONE_ID ;;
  }

  dimension: placement_type {
    type: string
    sql: ${TABLE}.PLACEMENT_TYPE ;;
  }

  dimension: placement_type_id {
    type: string
    sql: ${TABLE}.PLACEMENT_TYPE_ID ;;
  }

  dimension: placement_utc_offset {
    type: string
    sql: ${TABLE}.PLACEMENT_UTC_OFFSET ;;
  }

  dimension: platform_client {
    type: string
    sql: ${TABLE}.PLATFORM_CLIENT ;;
  }

  dimension: platform_client_id {
    type: string
    # hidden: no
    sql: ${TABLE}.PLATFORM_CLIENT_ID ;;
  }

  dimension: platform_client_is_publisher {
    type: string
    sql: ${TABLE}.PLATFORM_CLIENT_IS_PUBLISHER ;;
  }

  dimension: preferred_currency {
    type: string
    sql: ${TABLE}.PREFERRED_CURRENCY ;;
  }

  dimension: preferred_currency_id {
    type: string
    sql: ${TABLE}.PREFERRED_CURRENCY_ID ;;
  }

  dimension: publisher_group {
    type: string
    sql: ${TABLE}.PUBLISHER_GROUP ;;
  }

  dimension: publisher_group_id {
    type: string
    sql: ${TABLE}.PUBLISHER_GROUP_ID ;;
  }

  dimension: publisher_platform_client_group {
    type: string
    sql: ${TABLE}.PUBLISHER_PLATFORM_CLIENT_GROUP ;;
  }

  dimension: publisher_platform_client_group_id {
    type: string
    sql: ${TABLE}.PUBLISHER_PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: publisher_utc_offset {
    type: string
    sql: ${TABLE}.PUBLISHER_UTC_OFFSET ;;
  }

  dimension: region_currency {
    type: string
    sql: ${TABLE}.REGION_CURRENCY ;;
  }

  dimension: region_currency_id {
    type: string
    sql: ${TABLE}.REGION_CURRENCY_ID ;;
  }

  dimension: region_utc_offset {
    type: string
    sql: ${TABLE}.REGION_UTC_OFFSET ;;
  }

  dimension: skippable {
    type: string
    sql: ${TABLE}.SKIPPABLE ;;
  }

  dimension: transparency_type {
    type: string
    sql: ${TABLE}.TRANSPARENCY_TYPE ;;
  }

  dimension: transparency_type_id {
    type: string
    sql: ${TABLE}.TRANSPARENCY_TYPE_ID ;;
  }

  dimension: vmm_biddable_placement_id {
    type: string
    sql: ${TABLE}.VMM_BIDDABLE_PLACEMENT_ID ;;
  }

  dimension: whiteops_selection_type {
    type: string
    sql: ${TABLE}.WHITEOPS_SELECTION_TYPE ;;
  }

  dimension: whiteops_selection_type_id {
    type: string
    sql: ${TABLE}.WHITEOPS_SELECTION_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      placement_name,
      long_placement_name,
      partner_name,
      account_executive_name,
      placement_status.placement_status_id,
      placement_inventory_type.placement_inventory_type_id,
      platform_client.platform_client_id,
      platform_client.platform_type_name,
      platform_client.office_name,
      placement_integration_type.placement_integration_type_id
    ]
  }
}
