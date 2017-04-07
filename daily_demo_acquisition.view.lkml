view: daily_demo_acquisition {
  sql_table_name: DATAOPS.DAILY_DEMO_ACQUISITION ;;

  dimension: acquisition_type {
    type: string
    sql: ${TABLE}.ACQUISITION_TYPE ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: data_vendor_id {
    type: string
    sql: ${TABLE}.DATA_VENDOR_ID ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }

  dimension: keydate {
    type: string
    sql: ${TABLE}.KEYDATE ;;
  }

  dimension: processingid {
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: records {
    type: string
    sql: ${TABLE}.RECORDS ;;
  }

  dimension: uniques {
    type: string
    sql: ${TABLE}.UNIQUES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
