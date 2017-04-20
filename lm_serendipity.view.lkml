view: lm_serendipity {
  sql_table_name: inventory_v2.lm_serendipity ;;

  dimension: ad_position {
    type: string
    view_label: "Facets"
    label: "Ad Position"
    sql: ${TABLE}.ad_position ;;
  }

  dimension: ad_size {
    type: string
    view_label: "Facets"
    label: "Ad Size"
    sql: ${TABLE}.ad_size ;;
  }

  dimension: alexa_group {
    type: string
    sql: ${TABLE}.alexa_group ;;
  }

  dimension: alexa_rank {
    type: number
    sql: ${TABLE}.alexa_rank ;;
  }

  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_lang {
    type: string
    sql: ${TABLE}.browser_lang ;;
  }

  dimension: category_level_0 {
    type: string
    sql: ${TABLE}.category_level_0 ;;
  }

  dimension: category_level_1 {
    type: string
    sql: ${TABLE}.category_level_1 ;;
  }

  dimension: category_level_10 {
    type: string
    sql: ${TABLE}.category_level_10 ;;
  }

  dimension: category_level_11 {
    type: string
    sql: ${TABLE}.category_level_11 ;;
  }

  dimension: category_level_12 {
    type: string
    sql: ${TABLE}.category_level_12 ;;
  }

  dimension: category_level_13 {
    type: string
    sql: ${TABLE}.category_level_13 ;;
  }

  dimension: category_level_14 {
    type: string
    sql: ${TABLE}.category_level_14 ;;
  }

  dimension: category_level_15 {
    type: string
    sql: ${TABLE}.category_level_15 ;;
  }

  dimension: category_level_16 {
    type: string
    sql: ${TABLE}.category_level_16 ;;
  }

  dimension: category_level_17 {
    type: string
    sql: ${TABLE}.category_level_17 ;;
  }

  dimension: category_level_18 {
    type: string
    sql: ${TABLE}.category_level_18 ;;
  }

  dimension: category_level_2 {
    type: string
    sql: ${TABLE}.category_level_2 ;;
  }

  dimension: category_level_3 {
    type: string
    sql: ${TABLE}.category_level_3 ;;
  }

  dimension: category_level_4 {
    type: string
    sql: ${TABLE}.category_level_4 ;;
  }

  dimension: category_level_5 {
    type: string
    sql: ${TABLE}.category_level_5 ;;
  }

  dimension: category_level_6 {
    type: string
    sql: ${TABLE}.category_level_6 ;;
  }

  dimension: category_level_7 {
    type: string
    sql: ${TABLE}.category_level_7 ;;
  }

  dimension: category_level_8 {
    type: string
    sql: ${TABLE}.category_level_8 ;;
  }

  dimension: category_level_9 {
    type: string
    sql: ${TABLE}.category_level_9 ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: click {
    type: number
    sql: ${TABLE}.click ;;
  }

  dimension: click_conversion {
    type: number
    sql: ${TABLE}.click_conversion ;;
  }

  dimension: cluster_id {
    type: string
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: comscore_group {
    type: string
    sql: ${TABLE}.comscore_group ;;
  }

  dimension: comscore_rank {
    type: number
    sql: ${TABLE}.comscore_rank ;;
  }

  dimension: content_lang {
    type: string
    sql: ${TABLE}.content_lang ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.date ;;
  }

  dimension: demo_age {
    type: string
    sql: ${TABLE}.demo_age ;;
  }

  dimension: demo_gender {
    type: string
    sql: ${TABLE}.demo_gender ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: expandable {
    type: string
    sql: ${TABLE}.expandable ;;
  }

  dimension: geo_city {
    type: string
    sql: ${TABLE}.geo_city ;;
  }

  dimension: geo_country {
    type: string
    sql: ${TABLE}.geo_country ;;
  }

  dimension: geo_state {
    type: string
    sql: ${TABLE}.geo_state ;;
  }

  dimension: impression {
    type: number
    sql: ${TABLE}.impression ;;
  }

  dimension: inventory_source_level_1 {
    type: string
    sql: ${TABLE}.inventory_source_level_1 ;;
  }

  dimension: inventory_source_level_2 {
    type: string
    sql: ${TABLE}.inventory_source_level_2 ;;
  }

  dimension: inventory_source_level_3 {
    type: string
    sql: ${TABLE}.inventory_source_level_3 ;;
  }

  dimension: media_class_a_level_1 {
    type: string
    sql: ${TABLE}.media_class_a_level_1 ;;
  }

  dimension: media_class_a_level_2 {
    type: string
    sql: ${TABLE}.media_class_a_level_2 ;;
  }

  dimension: media_class_a_level_3 {
    type: string
    sql: ${TABLE}.media_class_a_level_3 ;;
  }

  dimension: media_class_a_level_4 {
    type: string
    sql: ${TABLE}.media_class_a_level_4 ;;
  }

  dimension: media_class_a_level_5 {
    type: string
    sql: ${TABLE}.media_class_a_level_5 ;;
  }

  dimension: normalized_domain {
    type: string
    sql: ${TABLE}.normalized_domain ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: pids {
    type: string
    sql: ${TABLE}.pids ;;
  }

  dimension: quantcast_group {
    type: string
    sql: ${TABLE}.quantcast_group ;;
  }

  dimension: quantcast_rank {
    type: number
    sql: ${TABLE}.quantcast_rank ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: video {
    type: string
    sql: ${TABLE}.video ;;
  }

  dimension: view_conversion {
    type: number
    sql: ${TABLE}.view_conversion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
