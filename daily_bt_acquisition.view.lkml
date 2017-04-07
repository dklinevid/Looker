view: daily_bt_acquisition {
  sql_table_name: DATAOPS.DAILY_BT_ACQUISITION ;;

  measure: cookies {
    type: sum
    sql: ${TABLE}.COOKIES ;;
  }

  dimension: is_s2_s {
    type: string
    sql: ${TABLE}.IS_S2S ;;
  }

  dimension: keydate {
    type: date
    sql: ${TABLE}.KEYDATE ;;
  }

  dimension: processingid {
    hidden: yes
    type: string
    sql: ${TABLE}.PROCESSINGID ;;
  }

  measure: reach {
    type: sum
    sql: ${TABLE}.REACH ;;
  }

  dimension: retargeting_attribute_id {
    type: number
    sql: ${TABLE}.RETARGETING_ATTRIBUTE_ID ;;
  }

}
