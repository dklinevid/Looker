view: flight_media_details_base {
  label: "Flight Media"
  sql_table_name: DIM.FLIGHT_MEDIA_DETAILS_BASE ;;

  dimension: agency_fee {
    type:number
    label: "Agency Fee"
    description: "The percentage amount that the agency charges to the customer.  This is added to net spend to determine gross spend."
    sql: ${TABLE}.AGENCY_FEE ;;
  }

  dimension: begin_datetime_local {
    type: date_hour
    label: "FM Begin Date - Local"
    description: "The begin date of the Flight Media in the demand timezone."
    sql: ${TABLE}.BEGIN_DATETIME_LOCAL ;;
  }

  dimension: begin_datetm {
    type: date_hour
    label: "FM Begin Date"
    description: "The begin date of the Flight Media in UTC."
    sql: ${TABLE}.BEGIN_DATETM ;;
  }

  dimension: campaign_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: cdn_file_loc {
    type: string
    hidden: yes
    sql: ${TABLE}.CDN_FILE_LOC ;;
  }

  dimension: changedon {
    type: date_millisecond
    hidden: yes
    sql: ${TABLE}.CHANGEDON ;;
  }

  dimension: checksum_value {
    type: string
    hidden: yes
    sql: ${TABLE}.CHECKSUM_VALUE ;;
  }

  dimension: clickurl {
    type: string
    label: "Click URL"
    description: "The URL used to measure clicks for the flight media."
    sql: ${TABLE}.CLICKURL ;;
  }

  dimension: client_tracking_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CLIENT_TRACKING_ID ;;
  }

  dimension: createdon {
    type: date_millisecond
    label: "Flight Media Created"
    description: "The date the flight media was created in the system in UTC."
    sql: ${TABLE}.CREATEDON ;;
  }

  dimension: creative_format_type {
    type: string
    label: "Creative Format"
    description: "The format type of the media.  Examples include VAST XML-VPAID, SWF, VPAID JS, XML, etc."
    sql: ${TABLE}.CREATIVE_FORMAT_TYPE ;;
  }

  dimension: creative_format_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CREATIVE_FORMAT_TYPE_ID ;;
  }

  dimension: demand_utc_offset {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
  }

  dimension: demo_abbreviation {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMO_ABBREVIATION ;;
  }

  dimension: demoaud {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMOAUD ;;
  }

  dimension: democomp {
    type: string
    hidden: yes
    sql: ${TABLE}.DEMOCOMP ;;
  }

  dimension: destination_url {
    type: string
    hidden: yes
    sql: ${TABLE}.DESTINATION_URL ;;
  }

  dimension: duration {
    type: string
    label: "Duration"
    description: "The duration of the creative, in seconds."
    sql: ${TABLE}.DURATION ;;
  }

  dimension: end_datetime_local {
    type: string
    label: "FM End Date - Local"
    description: "The end date of the Flight Media in the demand timezone."
    sql: ${TABLE}.END_DATETIME_LOCAL ;;
  }

  dimension: end_datetm {
    type: string
    label: "FM End Date"
    description: "The end date of the Flight Media in UTC."
    sql: ${TABLE}.END_DATETM ;;
  }

  dimension: end_ping_tracking {
    type: string
    label: "End Ping Tracking URL"
    description: "The URL used to track the completion ping"
    sql: ${TABLE}.END_PING_TRACKING ;;
  }

  dimension: external_id {
    type: string
    hidden: yes
    sql: ${TABLE}.EXTERNAL_ID ;;
  }

  dimension: first_quarter_ping_tracking {
    type: string
    label: "25% Ping Tracking URL"
    description: "The URL used to track the 25% complete ping."
    sql: ${TABLE}.FIRST_QUARTER_PING_TRACKING ;;
  }

  dimension: flight_active {
    type: yesno
    label: "Flight Active"
    view_label: "Flight"
    description: "A yes/no indicator if the flight is currently active."
    sql: ${TABLE}.FLIGHT_ACTIVE ;;
  }

  dimension: flight_description {
    type: string
    hidden: yes
    sql: ${TABLE}.FLIGHT_DESCRIPTION ;;
  }

  dimension: flight_id {
    type: string
    hidden: yes
    sql: ${TABLE}.FLIGHT_ID ;;
  }

  dimension: flight_is_added_value {
    type: yesno
    label: "Flight Added Value"
    view_label: "Flight"
    description: "A yes/no indicator if the Flight is an added value flight."
    sql: ${TABLE}.FLIGHT_IS_ADDED_VALUE ;;
  }

  dimension: flight_is_slate {
    type: yesno
    hidden: yes
    sql: ${TABLE}.FLIGHT_IS_SLATE ;;
  }

  dimension: flight_media_active {
    type: yesno
    label: "FM Active"
    description: "A yes/no indicator if the flight media is currently active."
    sql: ${TABLE}.FLIGHT_MEDIA_ACTIVE ;;
  }

  dimension: flight_media_description {
    type: string
    label: "FM Description"
    description: "The name of the flight media."
    sql: ${TABLE}.FLIGHT_MEDIA_DESCRIPTION ;;
  }

  dimension: flight_media_id {
    type: string
    label: "FMID"
    description: "The internal identifier of the Flight Media."
    sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
  }

  dimension: geo_and_demo_audience {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_AND_DEMO_AUDIENCE ;;
  }

  dimension: geo_only_audience {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_ONLY_AUDIENCE ;;
  }

  dimension: grp_audience_size {
    type: string
    hidden: yes
    sql: ${TABLE}.GRP_AUDIENCE_SIZE ;;
  }

  dimension: isfiller {
    type: yesno
    hidden: yes
    sql: ${TABLE}.ISFILLER ;;
  }

  dimension: isvideo {
    type: yesno
    hidden: yes
    sql: ${TABLE}.ISVIDEO ;;
  }

  dimension: media_active {
    type: yesno
    label: "Media Active"
    view_label: "Media"
    description: "A yes/no indicator if the media is currently active."
    sql: ${TABLE}.MEDIA_ACTIVE ;;
  }

  dimension: media_id {
    type: string
    label: "Media ID"
    view_label: "Media"
    description: "The internal identifier of the Media."
    sql: ${TABLE}.MEDIA_ID ;;
  }

  dimension: media_name {
    type: string
    label: "Media"
    view_label: "Media"
    description: "The name of the media."
    sql: ${TABLE}.MEDIA_NAME ;;
  }

  dimension: media_type {
    type: string
    label: "Media Type"
    view_label: "Media"
    description: "The type of media.  Examples include display, overlay, video, etc."
    sql: ${TABLE}.MEDIA_TYPE ;;
  }

  dimension: media_type_id {
    type: string
    hidden: yes
    sql: ${TABLE}.MEDIA_TYPE_ID ;;
  }

  dimension: media_width_height {
    type: string
    label: "Media Width and Height"
    view_label: "Media"
    description: "The width and height of the media in pixels."
    sql: ${TABLE}.MEDIA_WIDTH_HEIGHT ;;
  }

  dimension: media_width_height_id {
    type: string
    hidden: yes
    sql: ${TABLE}.MEDIA_WIDTH_HEIGHT_ID ;;
  }

  dimension: mid_ping_tracking {
    type: string
    label: "50% Ping Tracking URL"
    description: "The URL used to track the 50% complete ping."
    sql: ${TABLE}.MID_PING_TRACKING ;;
  }

  dimension: native_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.NATIVE_CURRENCY ;;
  }

  dimension: native_currency_id {
    type: string
    hidden: yes
    sql: ${TABLE}.NATIVE_CURRENCY_ID ;;
  }

  dimension: postalcode_targeted {
    type: string
    hidden: yes
    sql: ${TABLE}.POSTALCODE_TARGETED ;;
  }

  dimension: region_currency {
    type: string
    hidden: yes
    sql: ${TABLE}.REGION_CURRENCY ;;
  }

  dimension: region_currency_id {
    type: string
    hidden: yes
    sql: ${TABLE}.REGION_CURRENCY_ID ;;
  }

  dimension: region_utc_offset {
    type: string
    hidden: yes
    sql: ${TABLE}.REGION_UTC_OFFSET ;;
  }

  dimension: start_ping_tracking {
    type: string
    label: "Impression Ping Tracking URL"
    description: "The URL used to track the start of the impression."
    sql: ${TABLE}.START_PING_TRACKING ;;
  }

  dimension: starttimezone_id {
    type: string
    hidden: yes
    sql: ${TABLE}.STARTTIMEZONE_ID ;;
  }

  dimension: third_quarter_ping_tracking {
    type: string
    label: "75% Ping Tracking URL"
    description: "The URL used to track the 75% complete ping."
    sql: ${TABLE}.THIRD_QUARTER_PING_TRACKING ;;
  }

  dimension: trp_audience_size {
    type: string
    hidden: yes
    sql: ${TABLE}.TRP_AUDIENCE_SIZE ;;
  }

  dimension: tvaud {
    type: string
    hidden: yes
    sql: ${TABLE}.TVAUD ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [media_name, media_type.media_type_id]
  }
}
