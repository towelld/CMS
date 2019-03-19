view: running_balance {
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
    html: {% if running_balance.net._value < 0 %}
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
    html: {% if running_balance.net_eur._value < 0 %}
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
    html: {% if running_balance.net_gbp._value < 0 %}
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
    html: {% if running_balance.net_usd._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${TABLE}.netUSD ;;
  }

  dimension_group: post {
    type: time
    timeframes: [month, week, date, time, hour]
    convert_tz: no
    sql: ${TABLE}.PostDate ;;
  }

  dimension: subsidiary {
    type: string
    sql: ${TABLE}.Subsidiary ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_net{
    type: sum
    label: "Sum Net"
    value_format: "#,##0.00"
    html: {% if running_balance.sum_net._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${net};;
  }

  measure: sum_net_eur{
    type: sum
    label: "Sum Net EUR"
    value_format: "#,##0.00"
    html: {% if running_balance.sum_net_eur._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${net_eur};;
  }

  measure: sum_net_gbp{
    type: sum
    label: "Sum Net GBP"
    value_format: "#,##0.00"
    html: {% if running_balance.sum_net_gbp._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${net_gbp};;
  }

  measure: sum_net_usd{
    type: sum
    label: "Sum Net USD"
    value_format: "#,##0.00"
    html: {% if running_balance.sum_net_usd._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
    sql: ${net_usd};;
  }


}
