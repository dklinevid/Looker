view: retargeting_attribute {
  sql_table_name: DIM.RETARGETING_ATTRIBUTE ;;

  dimension: retargeting_attribute_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RETARGETING_ATTRIBUTE_ID ;;
  }

  dimension: behavioral_category {

    type: string
    sql: ${TABLE}.BEHAVIORAL_CATEGORY ;;
  }

  dimension: data_provider_id {
    type: number
    sql: ${TABLE}.DATA_PROVIDER_ID ;;
  }

  dimension: data_vendor_cost_description {
    type: string
    sql: ${TABLE}.DATA_VENDOR_COST_DESCRIPTION ;;
  }

  dimension: data_vendor_cost_id {
    hidden: yes
    type: string
    sql: ${TABLE}.DATA_VENDOR_COST_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: external_name {
    type: string
    sql: ${TABLE}.EXTERNAL_NAME ;;
  }

  dimension: payee_provider_id {
    hidden: yes
    type: string
    sql: ${TABLE}.PAYEE_PROVIDER_ID ;;
  }

  dimension: provider_name {
    description: "Integration Provider"
    label: "Integration Provider"
    type: string
    sql: ${TABLE}.PROVIDER_NAME ;;
  }

  dimension: retargeting_attribute_active {
    type: yesno
    sql: ${TABLE}.RETARGETING_ATTRIBUTE_ACTIVE ;;
  }

  dimension: retargeting_attribute_type_id {
    hidden: yes
    type: string
    sql: ${TABLE}.RETARGETING_ATTRIBUTE_TYPE_ID ;;
  }

  dimension: source_provider_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SOURCE_PROVIDER_ID ;;
  }

  dimension: type_description {
    type: string
    sql: ${TABLE}.TYPE_DESCRIPTION ;;
  }

}
