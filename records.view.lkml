view: records {
  sql_table_name: DemoCms.Records ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: amount_eur {
    label: "Amount EUR"
    type: number
    sql: ${TABLE}.AmountEUR ;;
    value_format: "#,##0.00"
    html: {% if records.amount_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
}

  dimension: amount_gbp {
    label: "Amount GBP"
    type: number
    sql: ${TABLE}.AmountGBP ;;
    value_format: "#,##0.00"
    html: {% if records.amount_gbp._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: amount_usd {
    label: "Amount USD"
    type: number
    sql: ${TABLE}.AmountUSD ;;
    value_format: "#,##0.00"
    html: {% if records.amount_usd._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.Bank ;;
  }

  dimension: close_balance {
    type: number
    sql: ${TABLE}.CloseBalance ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: close_balance_eur {
    label: "Close Balance EUR"
    type: number
    sql: ${TABLE}.CloseBalanceEUR ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: close_balance_gbp {
    label: "Close Balance GBP"
    type: number
    sql: ${TABLE}.CloseBalanceGBP ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: close_balance_usd {
    label: "Close Balance USD"
    type: number
    sql: ${TABLE}.CloseBalanceUSD ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: close_type {
    type: string
    sql: ${TABLE}.CloseType ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: open_balance {
    type: number
    sql: ${TABLE}.OpenBalance ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: open_balance_eur {
    label: "Open Balance EUR"
    type: number
    sql: ${TABLE}.OpenBalanceEUR ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: open_balance_gbp {
    label: "Open Balance GBP"
    type: number
    sql: ${TABLE}.OpenBalanceGBP ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: open_balance_usd {
    label: "Open Balance USD"
    type: number
    sql: ${TABLE}.OpenBalanceUSD ;;
    value_format: "#,##0.00"
    html: {% if records.amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension_group: post {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.PostDateTime ;;
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

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}.TransactionCode ;;
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
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
    html: {% if records.sum_amount._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }
  measure: sum_amount_eur {
    type: sum
    sql: ${amount_eur};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
    html: {% if records.sum_amount_eur._value < 0 %}
    <font color="#df5555">{{ rendered_value }}</font>
    {% else %}
    <font color="#000000">{{ rendered_value }}</font>
    {% endif %} ;;
  }
  measure: sum_amount_gbp {
    type: sum
    sql: ${amount_gbp};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
    html: {% if records.sum_amount_gbp._value < 0 %}
    <font color="#df5555">{{ rendered_value }}</font>
    {% else %}
    <font color="#000000">{{ rendered_value }}</font>
    {% endif %} ;;
  }
  measure: sum_amount_usd {
    type: sum
    sql: ${amount_usd};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
    html: {% if records.sum_amount_usd._value < 0 %}
    <font color="#df5555">{{ rendered_value }}</font>
    {% else %}
    <font color="#000000">{{ rendered_value }}</font>
    {% endif %} ;;
  }

  set: cash_record {
    fields: [
      subsidiary,
      bank,
      currency,
      account_no,
      amount,
      post_date,
      reference1,
      reference2,
      reference3
    ]
  }
}
