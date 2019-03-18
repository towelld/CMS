view: records {
  sql_table_name: DemoCms.Records ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: allow_purge {
    type: string
    sql: ${TABLE}.AllowPurge ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_currency {
    type: string
    sql: ${TABLE}.AmountCurrency ;;
  }

  dimension: amount_eur {
    type: number
    sql: ${TABLE}.AmountEUR ;;
  }

  dimension: amount_eurcurrency {
    type: string
    sql: ${TABLE}.AmountEURCurrency ;;
  }

  dimension: amount_gbp {
    type: number
    sql: ${TABLE}.AmountGBP ;;
  }

  dimension: amount_gbpcurrency {
    type: string
    sql: ${TABLE}.AmountGBPCurrency ;;
  }

  dimension: amount_unsigned {
    type: number
    sql: ${TABLE}.AmountUnsigned ;;
  }

  dimension: amount_unsigned_currency {
    type: string
    sql: ${TABLE}.AmountUnsignedCurrency ;;
  }

  dimension: amount_usd {
    type: number
    sql: ${TABLE}.AmountUSD ;;
  }

  dimension: amount_usdcurrency {
    type: string
    sql: ${TABLE}.AmountUSDCurrency ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.Bank ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: close_balance {
    type: number
    sql: ${TABLE}.CloseBalance ;;
  }

  dimension: close_balance_currency {
    type: string
    sql: ${TABLE}.CloseBalanceCurrency ;;
  }

  dimension: close_balance_eur {
    type: number
    sql: ${TABLE}.CloseBalanceEUR ;;
  }

  dimension: close_balance_eurcurrency {
    type: string
    sql: ${TABLE}.CloseBalanceEURCurrency ;;
  }

  dimension: close_balance_gbp {
    type: number
    sql: ${TABLE}.CloseBalanceGBP ;;
  }

  dimension: close_balance_gbpcurrency {
    type: string
    sql: ${TABLE}.CloseBalanceGBPCurrency ;;
  }

  dimension: close_balance_usd {
    type: number
    sql: ${TABLE}.CloseBalanceUSD ;;
  }

  dimension: close_balance_usdcurrency {
    type: string
    sql: ${TABLE}.CloseBalanceUSDCurrency ;;
  }

  dimension: close_currency {
    type: string
    sql: ${TABLE}.CloseCurrency ;;
  }

  dimension_group: close {
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
    datatype: date
    sql: ${TABLE}.CloseDate ;;
  }

  dimension: close_type {
    type: string
    sql: ${TABLE}.CloseType ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: open_balance {
    type: number
    sql: ${TABLE}.OpenBalance ;;
  }

  dimension: open_balance_currency {
    type: string
    sql: ${TABLE}.OpenBalanceCurrency ;;
  }

  dimension: open_balance_eur {
    type: number
    sql: ${TABLE}.OpenBalanceEUR ;;
  }

  dimension: open_balance_eurcurrency {
    type: string
    sql: ${TABLE}.OpenBalanceEURCurrency ;;
  }

  dimension: open_balance_gbp {
    type: number
    sql: ${TABLE}.OpenBalanceGBP ;;
  }

  dimension: open_balance_gbpcurrency {
    type: string
    sql: ${TABLE}.OpenBalanceGBPCurrency ;;
  }

  dimension: open_balance_usd {
    type: number
    sql: ${TABLE}.OpenBalanceUSD ;;
  }

  dimension: open_balance_usdcurrency {
    type: string
    sql: ${TABLE}.OpenBalanceUSDCurrency ;;
  }

  dimension: open_currency {
    type: string
    sql: ${TABLE}.OpenCurrency ;;
  }

  dimension_group: open {
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
    datatype: date
    sql: ${TABLE}.OpenDate ;;
  }

  dimension: open_type {
    type: string
    sql: ${TABLE}.OpenType ;;
  }

  dimension: our_reference {
    type: string
    sql: ${TABLE}.OurReference ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension_group: post {
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
    datatype: date
    sql: ${TABLE}.PostDate ;;
  }

  dimension: post_date_time {
    type: string
    sql: ${TABLE}.PostDateTime ;;
  }

  dimension: post_time {
    type: string
    sql: ${TABLE}.PostTime ;;
  }

  dimension: reference1 {
    type: string
    sql: ${TABLE}.Reference1 ;;
  }

  dimension: reference2 {
    type: string
    sql: ${TABLE}.Reference2 ;;
  }

  dimension: reference3 {
    type: string
    sql: ${TABLE}.Reference3 ;;
  }

  dimension: sign {
    type: string
    sql: ${TABLE}.Sign ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}.TransactionCode ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  dimension_group: value {
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
    datatype: date
    sql: ${TABLE}.ValueDate ;;
  }

  measure: count {
    type: count
    drill_fields: [cash_record*]
  }
  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
    drill_fields: [cash_record*]
  }
  measure: sum_amount {
    type: sum
    sql: ${amount};;
    value_format_name: decimal_2
    drill_fields: [cash_record*]
    html: {% if records.sum_amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }
  measure: average_amount {
    type: average
    sql: ${amount};;
    drill_fields: [cash_record*]
  }
  measure: sum_amount_usd {
    type: sum
    sql: ${amount_usd};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
  }
  measure: count_matched {
    type: sum
    sql: ${TABLE}.ActiveStatus;;
    drill_fields: [cash_record*]
  }

  set: cash_record {
    fields: [
      subsidiary,
      bank,
      currency,
      account_no,
      amount,
      post_date_time,
      value_date,
      reference1,
      reference2,
      reference3
    ]
  }
}
