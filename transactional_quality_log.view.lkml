view: transactional_quality_log {
  sql_table_name: DATAOPS.TRANSACTIONAL_QUALITY_LOG ;;

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  dimension: browserid {
    type: string
    sql: ${TABLE}.BROWSERID ;;
  }

  dimension: clickstream_detected_domain {
    type: string
    sql: ${TABLE}.CLICKSTREAM_DETECTED_DOMAIN ;;
  }

  dimension: clickstream_detected_url {
    type: string
    sql: ${TABLE}.CLICKSTREAM_DETECTED_URL ;;
  }

  dimension: domain_url {
    type: string
    sql: ${TABLE}.DOMAIN_URL ;;
  }

  dimension: eventtime {
    type: string
    sql: ${TABLE}.EVENTTIME ;;
  }

  dimension: fmid {
    type: string
    sql: ${TABLE}.FMID ;;
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

  dimension: normalized_domain {
    type: string
    sql: ${TABLE}.NORMALIZED_DOMAIN ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}.PID ;;
  }

  dimension: platformid {
    type: string
    sql: ${TABLE}.PLATFORMID ;;
  }

  dimension: player_size {
    type: string
    sql: ${TABLE}.PLAYER_SIZE ;;
  }

  dimension: processingid {
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: served_decision_url {
    type: string
    sql: ${TABLE}.SERVED_DECISION_URL ;;
  }

  dimension: served_detected_url {
    type: string
    sql: ${TABLE}.SERVED_DETECTED_URL ;;
  }

  dimension: third_party_served {
    type: string
    sql: ${TABLE}.THIRD_PARTY_SERVED ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.USERID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
