view: advertiser_brand_details {
  label: "Brand"
  sql_table_name: DIM.ADVERTISER_BRAND_DETAILS ;;

  dimension: advertiser_brand_id {
    type: number
    label: "Brand ID"
    description: "The system ID of the Brand."
    sql: ${TABLE}.ADVERTISER_BRAND_ID ;;
  }

  dimension: advertiser_createdon {
    type: date
    view_label: "Advertiser"
    label: "Advertiser Created Date"
    description: "The date the advertiser was created in the system."
    sql: ${TABLE}.ADVERTISER_CREATEDON ;;
  }

  dimension: advertiser_id {
    type: string
    view_label: "Advertiser"
    label: "Advertiser ID"
    description: "The system ID of the Advertiser"
    sql: ${TABLE}.ADVERTISER_ID ;;
  }

  dimension: advertiser_name {
    type: string
    view_label: "Advertiser"
    label: "Advertiser"
    description: "The name of the Advertiser"
    sql: ${TABLE}.ADVERTISER_NAME ;;
  }

  dimension: brand_active {
    type: yesno
    label: "Brand is Active"
    description: "Yes/No indicator if the Brand is active."
    sql: ${TABLE}.BRAND_ACTIVE ;;
  }

  dimension: brand_createdon {
    type: date
    label: "Brand Created Date"
    description: "The date the Brand was created in the system."
    sql: ${TABLE}.BRAND_CREATEDON ;;
  }

  dimension: brand_name {
    type: string
    label: "Brand"
    description: "The name of the Brand."
    sql: ${TABLE}.BRAND_NAME ;;
  }

  dimension: changedon {
    type: string
    hidden: yes
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: createdon {
    type: string
    hidden: yes
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: industry_segment_description {
    type: string
    label: "Industry Segment"
    description: "The industry segement of the brand."
    sql: ${TABLE}.INDUSTRY_SEGMENT_DESCRIPTION ;;
  }

  dimension: industry_segment_id {
    type: string
    hidden: yes
    sql: ${TABLE}.INDUSTRY_SEGMENT_ID ;;
  }

  dimension: industry_segment_type_description {
    type: string
    label: "Industry Segment Type"
    description: "The type of the industry segment of the brand."
    sql: ${TABLE}.INDUSTRY_SEGMENT_TYPE_DESCRIPTION ;;
  }

  dimension: industry_segment_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.INDUSTRY_SEGMENT_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [brand_name, advertiser_name]
  }
}
