view: v_running_balance {
  sql_table_name: DemoCms.vRunningBalance ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.Bank ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: net {
    type: number
    label: "Net"
    value_format: "#,##0.00"
    html: {% if records.amount_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${TABLE}.net ;;
  }

  dimension: net_eur {
    type: number
    label: "Net EUR"
    value_format: "#,##0.00"
    html: {% if records.amount_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${TABLE}.netEUR ;;
  }

  dimension: net_gbp {
    type: number
    label: "Net GBP"
    value_format: "#,##0.00"
    html: {% if records.amount_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${TABLE}.netGBP ;;
  }

  dimension: net_usd {
    type: number
    label: "Net USD"
    value_format: "#,##0.00"
    html: {% if records.amount_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${TABLE}.netUSD ;;
  }

  dimension_group: post {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.PostDate ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
