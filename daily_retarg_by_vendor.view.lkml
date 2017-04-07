view: daily_retarg_by_vendor {
  sql_table_name: DATAOPS.DAILY_RETARG_BY_VENDOR ;;

  dimension: attributecount {
    type: string
    sql: ${TABLE}.ATTRIBUTECOUNT ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: keydate {
    type: string
    sql: ${TABLE}.KEYDATE ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.PLACEMENT_ID ;;
  }

  dimension: processingid {
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: requests {
    type: string
    sql: ${TABLE}.REQUESTS ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.VENDOR_ID ;;
  }

  dimension: vendor_type {
    type: string
    sql: ${TABLE}.VENDOR_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
