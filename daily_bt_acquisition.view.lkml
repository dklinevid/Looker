view: daily_bt_acquisition {
  sql_table_name: DATAOPS.DAILY_BT_ACQUISITION ;;

  dimension: cookies {
    type: string
    sql: ${TABLE}.COOKIES ;;
  }

  dimension: is_s2_s {
    type: string
    sql: ${TABLE}.IS_S2S ;;
  }

  dimension: keydate {
    type: string
    sql: ${TABLE}.KEYDATE ;;
  }

  dimension: processingid {
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  dimension: reach {
    type: string
    sql: ${TABLE}.REACH ;;
  }

  dimension: retargeting_attribute_id {
    type: string
    sql: ${TABLE}.RETARGETING_ATTRIBUTE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
