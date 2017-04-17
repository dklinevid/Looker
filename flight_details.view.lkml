view: flight_details {
  label: "Flight"
  sql_table_name: DIM.FLIGHT_DETAILS ;;

  dimension: campaign_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: checksum_value {
    type: string
    hidden: yes
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: contract_end_date {
    type: date
    label: "Contracted End Date"
    description: "The end date of the flight based on the contract,"
    sql: ${TABLE}.CONTRACT_END_DATE ;;
  }

  dimension: contract_start_date {
    type: string
    label: "Contracted Start Date"
    description: "The start date of the flight based on the contract,"
    sql: ${TABLE}.CONTRACT_START_DATE ;;
  }

  dimension: contracted_budget {
    type: number
    label: "Contracted Buget"
    description: "The flight budget to be delivered based on the contract."
    sql: ${TABLE}.CONTRACTED_BUDGET ;;
  }

  dimension: contracted_cpu {
    type: number
    label: "Contracted CPU"
    description: "The CPU (cost per unit) based on the contract."
    sql: ${TABLE}.CONTRACTED_CPU ;;
  }

  dimension: contracted_units {
    type: string
    label: "Contracted Units"
    description: "The number of units in the flight to be delivered based on the contract,"
    sql: ${TABLE}.CONTRACTED_UNITS ;;
  }

  dimension: cpu {
    type: string
    description: "The flight CPU (cost per unit)."
    label: "Flight CPU"
    sql: ${TABLE}.CPU ;;
  }

  dimension: flight_description {
    type: string
    label: "Flight"
    description: "The name of the Flight."
    sql: ${TABLE}.FLIGHT_DESCRIPTION ;;
  }

  dimension: flight_id {
    type: string
    label: "Flight ID"
    description: "The system ID of the flight"
    sql: ${TABLE}.FLIGHT_ID ;;
  }

  dimension: override_campaign_cpu {
    type: yesno
    label: "Override Campaign CPU"
    description: "A yes/no indicator if the flight CPU is an override of the campaign CPU (yes) or uses the campaign's CPU (no)."
    sql: ${TABLE}.OVERRIDE_CAMPAIGN_CPU ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
