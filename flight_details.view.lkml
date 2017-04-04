view: flight_details {
  sql_table_name: DIM.FLIGHT_DETAILS ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: checksum_value {
    type: string
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: contract_end_date {
    type: string
    sql: ${TABLE}.CONTRACT_END_DATE ;;
  }

  dimension: contract_start_date {
    type: string
    sql: ${TABLE}.CONTRACT_START_DATE ;;
  }

  dimension: contracted_budget {
    type: string
    sql: ${TABLE}.CONTRACTED_BUDGET ;;
  }

  dimension: contracted_cpu {
    type: string
    sql: ${TABLE}.CONTRACTED_CPU ;;
  }

  dimension: contracted_units {
    type: string
    sql: ${TABLE}.CONTRACTED_UNITS ;;
  }

  dimension: cpu {
    type: string
    sql: ${TABLE}.CPU ;;
  }

  dimension: flight_description {
    type: string
    sql: ${TABLE}.FLIGHT_DESCRIPTION ;;
  }

  dimension: flight_id {
    type: string
    sql: ${TABLE}.FLIGHT_ID ;;
  }

  dimension: override_campaign_cpu {
    type: yesno
    sql: ${TABLE}.OVERRIDE_CAMPAIGN_CPU ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
