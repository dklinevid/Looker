view: insertion_order_details {
  sql_table_name: DIM.INSERTION_ORDER_DETAILS ;;
  view_label: "Insertion Order"

  dimension: account_rep {
    type: string
    sql: ${TABLE}.ACCOUNT_REP ;;
  }

  dimension: advertiser_brand_id {
    type: string
    hidden: yes
    sql: ${TABLE}.ADVERTISER_BRAND_ID ;;
  }

  dimension: business_hemisphere_description {
    type: string
    sql: ${TABLE}.BUSINESS_HEMISPHERE_DESCRIPTION ;;
  }

  dimension: business_hemisphere_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BUSINESS_HEMISPHERE_ID ;;
  }

  dimension: business_region_currency_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_CURRENCY_ID ;;
  }

  dimension: business_region_description {
    type: string
    sql: ${TABLE}.BUSINESS_REGION_DESCRIPTION ;;
  }

  dimension: business_region_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BUSINESS_REGION_ID ;;
  }

  dimension: changedon {
    type: date
    hidden: yes
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: contract_number {
    type: string
    sql: ${TABLE}.CONTRACT_NUMBER ;;
  }

  dimension: createdon {
    type: date
    #hidden: yes
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: currency_abbreviation {
    type: string
    sql: ${TABLE}.CURRENCY_ABBREVIATION ;;
  }

  dimension: customer_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: insertion_order_id {
    type: string
    sql: ${TABLE}.INSERTION_ORDER_ID ;;
  }

  dimension: insertion_order_name {
    type: string
    sql: ${TABLE}.INSERTION_ORDER_NAME ;;
  }

  dimension: insertion_order_status_description {
    type: string
    sql: ${TABLE}.INSERTION_ORDER_STATUS_DESCRIPTION ;;
  }

  dimension: insertion_order_status_id {
    type: number
    hidden: yes
    sql: ${TABLE}.INSERTION_ORDER_STATUS_ID ;;
  }

  dimension: io_active {
    type: yesno
    sql: ${TABLE}.IO_ACTIVE ;;
  }

  dimension: io_begin_date {
    type: date
    sql: ${TABLE}.IO_BEGIN_DATE ;;
  }

  dimension: io_end_date {
    type: date
    sql: ${TABLE}.IO_END_DATE ;;
  }

  dimension: native_currency_id {
    type: number
    hidden: yes
    sql: ${TABLE}.NATIVE_CURRENCY_ID ;;
  }

  dimension: office_id {
    type: string
    sql: ${TABLE}.OFFICE_ID ;;
  }

  dimension: office_name {
    type: string
    label: "Insertion Order Office"
    sql: ${TABLE}.OFFICE_NAME ;;
  }

  dimension: pitch_description {
    type: string
    hidden: yes
    sql: ${TABLE}.PITCH_DESCRIPTION ;;
  }

  dimension: pitch_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PITCH_ID ;;
  }

  dimension: pitch_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PITCH_NAME ;;
  }

  dimension: platform_client_description {
    type: string
    hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_DESCRIPTION ;;
  }

  dimension: platform_client_group_description {
    type: string
    hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_GROUP_DESCRIPTION ;;
  }

  dimension: platform_client_group_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_GROUP_ID ;;
  }

  dimension: platform_client_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PLATFORM_CLIENT_ID ;;
  }

  dimension: reporting_business_unit_description {
    type: string
    hidden: yes
    sql: ${TABLE}.REPORTING_BUSINESS_UNIT_DESCRIPTION ;;
  }

  dimension: reporting_business_unit_id {
    type: number
    hidden: yes
    sql: ${TABLE}.REPORTING_BUSINESS_UNIT_ID ;;
  }

  dimension: salesperson {
    type: string
    sql: ${TABLE}.SALESPERSON ;;
  }

  dimension: salesperson_name {
    type: string
    sql: ${TABLE}.SALESPERSON_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      pitch_name,
      office_name,
      insertion_order_name,
      salesperson_name,
      platform_client.platform_client_id,
      platform_client.platform_type_name,
      platform_client.office_name
    ]
  }
}
