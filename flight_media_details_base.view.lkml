view: flight_media_details_base {
  sql_table_name: DIM.FLIGHT_MEDIA_DETAILS_BASE ;;

  dimension: agency_fee {
    type:number
    sql: ${TABLE}.AGENCY_FEE ;;
  }

  dimension: begin_datetime_local {
    type: date_hour
    sql: ${TABLE}.BEGIN_DATETIME_LOCAL ;;
  }

  dimension: begin_datetm {
    type: date_hour
    sql: ${TABLE}.BEGIN_DATETM ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: cdn_file_loc {
    type: string
    sql: ${TABLE}.CDN_FILE_LOC ;;
  }

  dimension: changedon {
    type: date_millisecond
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: checksum_value {
    type: string
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: clickurl {
    type: string
    sql: ${TABLE}.CLICKURL ;;
  }

  dimension: client_tracking_id {
    type: string
    sql: ${TABLE}.CLIENT_TRACKING_ID ;;
  }

  dimension: createdon {
    type: date_millisecond
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: creative_format_type {
    type: string
    sql: ${TABLE}.CREATIVE_FORMAT_TYPE ;;
  }

  dimension: creative_format_type_id {
    type: string
    sql: ${TABLE}.CREATIVE_FORMAT_TYPE_ID ;;
  }

  dimension: demand_utc_offset {
    type: string
    sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
  }

  dimension: demo_abbreviation {
    type: string
    sql: ${TABLE}.DEMO_ABBREVIATION ;;
  }

  dimension: demoaud {
    type: string
    sql: ${TABLE}.DEMOAUD ;;
  }

  dimension: democomp {
    type: string
    sql: ${TABLE}.DEMOCOMP ;;
  }

  dimension: destination_url {
    type: string
    sql: ${TABLE}.DESTINATION_URL ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.DURATION ;;
  }

  dimension: end_datetime_local {
    type: string
    sql: ${TABLE}.END_DATETIME_LOCAL ;;
  }

  dimension: end_datetm {
    type: string
    sql: ${TABLE}.END_DATETM ;;
  }

  dimension: end_ping_tracking {
    type: string
    sql: ${TABLE}.END_PING_TRACKING ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.EXTERNAL_ID ;;
  }

  dimension: first_quarter_ping_tracking {
    type: string
    sql: ${TABLE}.FIRST_QUARTER_PING_TRACKING ;;
  }

  dimension: flight_active {
    type: yesno
    sql: ${TABLE}.FLIGHT_ACTIVE ;;
  }

  dimension: flight_description {
    type: string
    sql: ${TABLE}.FLIGHT_DESCRIPTION ;;
  }

  dimension: flight_id {
    type: string
    sql: ${TABLE}.FLIGHT_ID ;;
  }

  dimension: flight_is_added_value {
    type: yesno
    sql: ${TABLE}.FLIGHT_IS_ADDED_VALUE ;;
  }

  dimension: flight_is_slate {
    type: yesno
    sql: ${TABLE}.FLIGHT_IS_SLATE ;;
  }

  dimension: flight_media_active {
    type: yesno
    sql: ${TABLE}.FLIGHT_MEDIA_ACTIVE ;;
  }

  dimension: flight_media_description {
    type: string
    sql: ${TABLE}.FLIGHT_MEDIA_DESCRIPTION ;;
  }

  dimension: flight_media_id {
    type: string
    sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
  }

  dimension: geo_and_demo_audience {
    type: string
    sql: ${TABLE}.GEO_AND_DEMO_AUDIENCE ;;
  }

  dimension: geo_only_audience {
    type: string
    sql: ${TABLE}.GEO_ONLY_AUDIENCE ;;
  }

  dimension: grp_audience_size {
    type: string
    sql: ${TABLE}.GRP_AUDIENCE_SIZE ;;
  }

  dimension: isfiller {
    type: yesno
    sql: ${TABLE}.ISFILLER ;;
  }

  dimension: isvideo {
    type: yesno
    sql: ${TABLE}.ISVIDEO ;;
  }

  dimension: media_active {
    type: yesno
    sql: ${TABLE}.MEDIA_ACTIVE ;;
  }

  dimension: media_id {
    type: string
    sql: ${TABLE}.MEDIA_ID ;;
  }

  dimension: media_name {
    type: string
    sql: ${TABLE}.MEDIA_NAME ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}.MEDIA_TYPE ;;
  }

  dimension: media_type_id {
    type: string
    # hidden: no
    sql: ${TABLE}.MEDIA_TYPE_ID ;;
  }

  dimension: media_width_height {
    type: string
    sql: ${TABLE}.MEDIA_WIDTH_HEIGHT ;;
  }

  dimension: media_width_height_id {
    type: string
    sql: ${TABLE}.MEDIA_WIDTH_HEIGHT_ID ;;
  }

  dimension: mid_ping_tracking {
    type: string
    sql: ${TABLE}.MID_PING_TRACKING ;;
  }

  dimension: native_currency {
    type: string
    sql: ${TABLE}.NATIVE_CURRENCY ;;
  }

  dimension: native_currency_id {
    type: string
    sql: ${TABLE}.NATIVE_CURRENCY_ID ;;
  }

  dimension: postalcode_targeted {
    type: string
    sql: ${TABLE}.POSTALCODE_TARGETED ;;
  }

  dimension: region_currency {
    type: string
    sql: ${TABLE}.REGION_CURRENCY ;;
  }

  dimension: region_currency_id {
    type: string
    sql: ${TABLE}.REGION_CURRENCY_ID ;;
  }

  dimension: region_utc_offset {
    type: string
    sql: ${TABLE}.REGION_UTC_OFFSET ;;
  }

  dimension: start_ping_tracking {
    type: string
    sql: ${TABLE}.START_PING_TRACKING ;;
  }

  dimension: starttimezone_id {
    type: string
    sql: ${TABLE}.STARTTIMEZONE_ID ;;
  }

  dimension: third_quarter_ping_tracking {
    type: string
    sql: ${TABLE}.THIRD_QUARTER_PING_TRACKING ;;
  }

  dimension: trp_audience_size {
    type: string
    sql: ${TABLE}.TRP_AUDIENCE_SIZE ;;
  }

  dimension: tvaud {
    type: string
    sql: ${TABLE}.TVAUD ;;
  }

  measure: count {
    type: count
    drill_fields: [media_name, media_type.media_type_id]
  }
}