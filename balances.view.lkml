view: balances {
  sql_table_name: DemoCms.Balances ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
    drill_fields: [records*]
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.Bank ;;
  }

  dimension: close_balance {
    type: number
    sql: ${TABLE}.CloseBalance ;;
    label: "Close Balance"
    value_format: "#,##0.00"
    html: {% if balances.close_balance._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
}

  dimension: close_balance_eur {
    type: number
    sql: ${TABLE}.CloseBalanceEUR ;;
    label: "Close Balance EUR"
    value_format: "#,##0.00"
    html: {% if balances.close_balance_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }

  dimension: close_balance_gbp {
    type: number
    sql: ${TABLE}.CloseBalanceGBP ;;
    label: "Close Balance GBP"
    value_format: "#,##0.00"
    html: {% if balances.close_balance_gbp._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
}

  dimension: close_balance_usd {
    type: number
    sql: ${TABLE}.CloseBalanceUSD ;;
    label: "Close Balance USD"
    value_format: "#,##0.00"
    html: {% if balances.close_balance_usd._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
}

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
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

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  measure: count {
    type: count
    drill_fields: [balance_record*]
  }

  measure: sum_close_balance {
    label: "Sum Close Balance"
    type: sum
    sql: ${close_balance};;
    value_format: "#,##0.00"
    html: {% if balances.sum_close_balance._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    drill_fields: [balance_record*]
  }
  measure: sum_close_balance_eur {
    label: "Sum Close Balance EUR"
    type: sum
    sql: ${close_balance_eur};;
    value_format: "#,##0.00"
    html: {% if balances.sum_close_balance_eur._value < 0 %}
          <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
          <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    drill_fields: [balance_record*]
  }
  measure: sum_close_balance_gbp {
    label: "Sum Close Balance GBP"
    type: sum
    sql: ${close_balance_gbp};;
    value_format: "#,##0.00"
    html: {% if balances.sum_close_balance_gbp._value < 0 %}
          <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
          <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    drill_fields: [balance_record*]
  }
  measure: sum_close_balance_usd {
    label: "Sum Close Balance USD"
    type: sum
    sql: ${close_balance_usd};;
    value_format: "#,##0.00"
    html: {% if balances.sum_close_balance_usd._value < 0 %}
          <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
          <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    drill_fields: [balance_record*]
  }

  set: balance_record {
    fields: [
      subsidiary,
      bank,
      currency,
      account_no,
      post_date,
      close_balance
    ]
  }
  set: records {
    fields: [
      records.bank,
      records.account_no,
      records.amount,
      records.currency
    ]
  }

}
