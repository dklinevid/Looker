view: geodata {
  sql_table_name: DIM.GEODATA ;;

  dimension: country {
    type: string
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: country_description {
    type: string
    sql: ${TABLE}.COUNTRY_DESCRIPTION ;;
  }

  dimension: country_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.COUNTRY_ID ;;
  }

  dimension: dma {
    type: string
    sql: ${TABLE}.DMA ;;
  }

  dimension: dma_description {
    type: string
    sql: ${TABLE}.DMA_DESCRIPTION ;;
  }

  dimension: geoid {
    type: string
    sql: ${TABLE}.GEOID ;;
  }

  dimension: iso_country {
    type: string
    sql: ${TABLE}.ISO_COUNTRY ;;
  }

  dimension: iso_region {
    type: string
    sql: ${TABLE}.ISO_REGION ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: region_description {
    type: string
    sql: ${TABLE}.REGION_DESCRIPTION ;;
  }

  dimension: utcoffset {
    type: string
    sql: ${TABLE}.UTCOFFSET ;;
  }

  measure: count {
    type: count
    drill_fields: [country.country_id]
  }
}
