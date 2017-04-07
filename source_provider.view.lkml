view: source_provider {
  sql_table_name: DIM.USER_DATA_VENDOR ;;

  dimension: user_data_vendor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.USER_DATA_VENDOR_ID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: collider_payout_order {
    hidden: yes
    type: string
    sql: ${TABLE}.COLLIDER_PAYOUT_ORDER ;;
  }

  dimension: created_on {
    hidden: yes
    type: string
    sql: ${TABLE}.CREATED_ON ;;
  }

  dimension: description {
    description: "Source Provider"
    label: "Source Provider"
    type: string

    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: expire_time {
    hidden: yes
    type: string
    sql: ${TABLE}.EXPIRE_TIME ;;
  }

  dimension: frequency {
    hidden: yes
    type: string
    sql: ${TABLE}.FREQUENCY ;;
  }

  dimension: frequency_period {
    hidden: yes
    type: string
    sql: ${TABLE}.FREQUENCY_PERIOD ;;
  }

  dimension: is_modeling_allowed {
    hidden: yes
    type: yesno
    sql: ${TABLE}.IS_MODELING_ALLOWED ;;
  }

  dimension: lookup_locale_id {
    hidden: yes
    type: string
    # hidden: yes
    sql: ${TABLE}.LOOKUP_LOCALE_ID ;;
  }

  dimension: network_coverage_pct {
    hidden: yes
    type: string
    sql: ${TABLE}.NETWORK_COVERAGE_PCT ;;
  }

  dimension: payout_order {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYOUT_ORDER ;;
  }

  dimension: payout_type_id {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYOUT_TYPE_ID ;;
  }

  dimension: preference_order {
    hidden: yes
    type: string
    sql: ${TABLE}.PREFERENCE_ORDER ;;
  }

  dimension: realtime_redirect_logger {
    hidden: yes
    type: yesno
    sql: ${TABLE}.REALTIME_REDIRECT_LOGGER ;;
  }

  dimension: realtime_redirect_request {
    hidden: yes
    type: yesno
    sql: ${TABLE}.REALTIME_REDIRECT_REQUEST ;;
  }

  dimension: user_data_vendor_type {
    type: string
    sql: ${TABLE}.USER_DATA_VENDOR_TYPE ;;
  }

  dimension: user_data_vendor_type_id {
    hidden: yes
    type: string
    sql: ${TABLE}.USER_DATA_VENDOR_TYPE_ID ;;
  }

}
