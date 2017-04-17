view: customer_details {
  label: "Customer"
  sql_table_name: DIM.CUSTOMER_DETAILS ;;

  dimension: addr_line1 {
    type: string
    label: "Customer Address 1"
    description: "The first address line for the customer."
    sql: ${TABLE}.ADDR_LINE1 ;;
  }

  dimension: addr_line2 {
    type: string
    label: "Customer Address 2"
    description: "The second address line for the customer."
    sql: ${TABLE}.ADDR_LINE2 ;;
  }

  dimension: ahc_description {
    type: string
    label: "AHC"
    description: "The agency holding company of the customer."
    sql: ${TABLE}.AHC_DESCRIPTION ;;
  }

  dimension: ahc_id {
    type: string
    hidden: yes
    sql: ${TABLE}.AHC_ID ;;
  }

  dimension: business_unit {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: changedon {
    type: string
    hidden: yes
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: city {
    type: string
    label: "Customer City"
    description: "The city of the customer address."
    sql: ${TABLE}.CITY ;;
  }

  dimension: country_id {
    type: string
    hidden: yes
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: createdon {
    type: string
    hidden: yes
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: customer_active {
    type: yesno
    label: "Customer Active"
    description: "A yes/no indicator if the customer is active."
    sql: ${TABLE}.CUSTOMER_ACTIVE ;;
  }

  dimension: customer_group_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_GROUP_ID ;;
  }

  dimension: customer_group_name {
    type: string
    label: "Customer Group"
    description: "The name of the group the customer belongs to, if applicable."
    sql: ${TABLE}.CUSTOMER_GROUP_NAME ;;
  }

  dimension: customer_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_name {
    type: string
    label: "Customer"
    description: "The name of the customer."
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_office_description {
    type: string
    label: "Customer Office"
    description: "The location of the office of the customer."
    sql: ${TABLE}.CUSTOMER_OFFICE_DESCRIPTION ;;
  }

  dimension: customer_office_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_OFFICE_ID ;;
  }

  dimension: customer_preferred_currency_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_PREFERRED_CURRENCY_ID ;;
  }

  dimension: customer_type_description {
    type: string
    label: "Customer Type"
    hidden: yes
    sql: ${TABLE}.CUSTOMER_TYPE_DESCRIPTION ;;
  }

  dimension: customer_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CUSTOMER_TYPE_ID ;;
  }

  dimension: default_site_categories {
    type: string
    hidden: yes
    sql: ${TABLE}.DEFAULT_SITE_CATEGORIES ;;
  }

  dimension: is_demo {
    type: yesno
    label: "Demo Customer"
    description: "A yes/no indicator if the customer is a demo customer."
    sql: ${TABLE}.IS_DEMO ;;
  }

  dimension: parent_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PARENT_ID ;;
  }

  dimension: postalcode {
    type: string
    label: "Customer Zip"
    description: "The postal code of the customer's address."
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: stateprovince {
    type: string
    label: "Customer State"
    description: "The state/province of the customer's address."
    sql: ${TABLE}.STATEPROVINCE ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, customer_group_name, country.country_id]
  }
}
