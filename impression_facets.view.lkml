view: impression_facets {
    label: "Impression Facets"
    sql_table_name: RAWDB.IMPRESSION_FACT ;;

    dimension: ad_buyer_id {
      type: string
      sql: ${TABLE}.AD_BUYER_ID ;;
    }

    dimension: adid {
      type: string
      sql: ${TABLE}.ADID ;;
    }

    dimension: age {
      type: string
      sql: ${TABLE}.AGE ;;
    }

    dimension: asset_group_clearcast_codes {
      type: string
      sql: ${TABLE}.ASSET_GROUP_CLEARCAST_CODES ;;
    }

    dimension: asset_group_id {
      type: string
      sql: ${TABLE}.ASSET_GROUP_ID ;;
    }

    dimension: asset_id {
      type: string
      sql: ${TABLE}.ASSET_ID ;;
    }

    dimension: awsregion {
      type: string
      sql: ${TABLE}.AWSREGION ;;
    }

    dimension: browser {
      type: string
      sql: ${TABLE}.BROWSER ;;
    }

    dimension: bt_cluster_cost_attribute {
      type: string
      sql: ${TABLE}.BT_CLUSTER_COST_ATTRIBUTE ;;
    }

    dimension: bt_cluster_provider {
      type: string
      sql: ${TABLE}.BT_CLUSTER_PROVIDER ;;
    }

    dimension: bt_cost_attribute {
      type: string
      sql: ${TABLE}.BT_COST_ATTRIBUTE ;;
    }

    dimension: btproviderid {
      type: string
      sql: ${TABLE}.BTPROVIDERID ;;
    }

    dimension: clock_clearcast_codes {
      type: string
      sql: ${TABLE}.CLOCK_CLEARCAST_CODES ;;
    }

    dimension: clock_number {
      type: string
      sql: ${TABLE}.CLOCK_NUMBER ;;
    }

    dimension: clusterid {
      type: string
      sql: ${TABLE}.CLUSTERID ;;
    }

    dimension: country {
      type: string
      sql: ${TABLE}.COUNTRY ;;
    }

    dimension: daypart {
      type: string
      sql: ${TABLE}.DAYPART ;;
    }

    dimension: deal_causing_house {
      type: string
      sql: ${TABLE}.DEAL_CAUSING_HOUSE ;;
    }

    dimension: demand_platform_client_group_id {
      type: string
      hidden: yes
      sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_GROUP_ID ;;
    }

    dimension: demand_platform_client_id {
      type: string
      hidden: yes
      sql: ${TABLE}.DEMAND_PLATFORM_CLIENT_ID ;;
    }

    dimension: demand_region_utc_offset {
      type: string
      sql: ${TABLE}.DEMAND_REGION_UTC_OFFSET ;;
    }

    dimension: demand_utc_offset {
      type: string
      sql: ${TABLE}.DEMAND_UTC_OFFSET ;;
    }

    dimension: demoproviderid {
      type: string
      sql: ${TABLE}.DEMOPROVIDERID ;;
    }

    dimension: deviceaid {
      type: string
      sql: ${TABLE}.DEVICEAID ;;
    }

    dimension: domain_hash {
      type: string
      sql: ${TABLE}.DOMAIN_HASH ;;
    }

    dimension: domain_url {
      type: string
      sql: ${TABLE}.DOMAIN_URL ;;
    }

    dimension: dvid {
      type: string
      sql: ${TABLE}.DVID ;;
    }

    dimension: eventtime {
      type: date_second
      description: "Time of the event stored in UTC"
      sql: ${TABLE}.EVENTTIME ;;
    }

    dimension: flight_media_id {
      type: string
      sql: ${TABLE}.FLIGHT_MEDIA_ID ;;
    }

    dimension: gender {
      type: string
      sql: ${TABLE}.GENDER ;;
    }

    dimension: geo {
      type: string
      sql: ${TABLE}.GEO ;;
    }

    dimension: house_reason_code {
      type: string
      sql: ${TABLE}.HOUSE_REASON_CODE ;;
    }

    dimension: ip {
      type: string
      sql: ${TABLE}.IP ;;
    }

    dimension: isp {
      type: string
      sql: ${TABLE}.ISP ;;
    }

    dimension: language_id {
      type: string
      sql: ${TABLE}.LANGUAGE_ID ;;
    }

    dimension: normalized_domain {
      type: string
      sql: ${TABLE}.NORMALIZED_DOMAIN ;;
    }

    dimension: payout_type {
      type: string
      sql: ${TABLE}.PAYOUT_TYPE ;;
    }

    dimension: pdata1 {
      type: string
      sql: ${TABLE}.PDATA1 ;;
    }

    dimension: pdata2 {
      type: string
      sql: ${TABLE}.PDATA2 ;;
    }

    dimension: placement_id {
      type: string
      sql: ${TABLE}.PLACEMENT_ID ;;
    }

    dimension: platform {
      type: string
      sql: ${TABLE}.PLATFORM ;;
    }

    dimension: poc {
      type: string
      sql: ${TABLE}.POC ;;
    }

    dimension: postalcode {
      type: string
      sql: ${TABLE}.POSTALCODE ;;
    }

    dimension: postalcode_provider {
      type: string
      sql: ${TABLE}.POSTALCODE_PROVIDER ;;
    }

    dimension: processingid {
      type: string
      sql: ${TABLE}.PROCESSINGID ;;
    }

    dimension: pub_tracking_id {
      type: string
      sql: ${TABLE}.PUB_TRACKING_ID ;;
    }

    dimension: referring_url {
      type: string
      sql: ${TABLE}.REFERRING_URL ;;
    }

    dimension: rpu_type {
      type: string
      sql: ${TABLE}.RPU_TYPE ;;
    }

    dimension: social_ab {
      type: string
      sql: ${TABLE}.SOCIAL_AB ;;
    }

    dimension: social_abc {
      type: string
      sql: ${TABLE}.SOCIAL_ABC ;;
    }

    dimension: supply_platform_client_group_id {
      type: string
      sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_GROUP_ID ;;
    }

    dimension: supply_platform_client_id {
      type: string
      sql: ${TABLE}.SUPPLY_PLATFORM_CLIENT_ID ;;
    }

    dimension: supply_region_utc_offset {
      type: string
      sql: ${TABLE}.SUPPLY_REGION_UTC_OFFSET ;;
    }

    dimension: supply_utc_offset {
      type: string
      sql: ${TABLE}.SUPPLY_UTC_OFFSET ;;
    }


    dimension: userid {
      type: string
      sql: ${TABLE}.USERID ;;
    }

    dimension: version_no {
      type: string
      sql: ${TABLE}.VERSION_NO ;;
    }

    dimension: viewability_measurable_code {
      type: string
      sql: ${TABLE}.VIEWABILITY_MEASURABLE_CODE ;;
    }

  }
