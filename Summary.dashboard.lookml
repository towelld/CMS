- dashboard: summary
  title: Summary
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: post_date
    type: field_filter
    model: cms
    explore: balances
    field: balances.post_date
    default_value: 2019/02/18
  - name: subsidiary
    type: field_filter
    model: cms
    explore: balances
    field: balances.subsidiary
  - name: currency
    type: field_filter
    model: cms
    explore: balances
    field: balances.currency
  - name: account_no
    type: field_filter
    model: cms
    explore: balances
    field: balances.account_no
  - name: bank
    type: field_filter
    model: cms
    explore: balances
    field: balances.bank

  elements:
    - name: currency_pie
      title: Currencies (GBP)
      left: 0
      top: 0
      height: 4
      width: 6
      explore: balances
      type: looker_pie
      dimensions: [balances.currency]
      measures: [balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc]
      limit: 500
      value_labels: legend
      label_type: lab
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: circle
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      inner_radius: 40

    - name: banks_pie
      title: Banks (GBP)
      left: 6
      top: 0
      height: 4
      width: 6
      explore: balances
      type: looker_pie
      dimensions: [balances.bank]
      measures: [balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc]
      limit: 500
      value_labels: legend
      label_type: lab
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: circle
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      inner_radius: 40

    - name: subsidiaries_pie
      title: Subsidiaries (GBP)
      left: 12
      top: 0
      height: 4
      width: 6
      explore: balances
      type: looker_pie
      dimensions: [balances.subsidiary]
      measures: [balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc]
      limit: 500
      value_labels: legend
      label_type: lab
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: circle
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      inner_radius: 40

    - name: currencies_bar
      title: Currencies (GBP)
      left: 0
      top: 4
      height: 4
      width: 6
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.currency, balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc, balances.currency]
      limit: 500
      column_limit: 50
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: lab
      show_null_points: true
      point_style: circle
      series_types: {}
      inner_radius: 40
      label_color: ["#FA8D29"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: balances.sum_close_balance_gbp,
              name: Sum Close Balance GBP, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#FA8D29"


    - name: banks_bar
      title: Banks (GBP)
      left: 6
      top: 4
      height: 4
      width: 6
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.bank, balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc, balances.bank]
      limit: 500
      column_limit: 50
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: lab
      show_null_points: true
      point_style: circle
      series_types: {}
      inner_radius: 40
      label_color: ["#646569"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: balances.sum_close_balance_gbp,
              name: Sum Close Balance GBP, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#646569"

    - name: subsidiaries_bar
      title: Subsidiaries (GBP)
      left: 12
      top: 4
      height: 4
      width: 6
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.subsidiary, balances.sum_close_balance_gbp]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc, balances.subsidiary]
      limit: 500
      column_limit: 50
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      value_labels: legend
      label_type: lab
      show_null_points: true
      point_style: circle
      series_types: {}
      inner_radius: 40
      label_color: ["#5E8AB4"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: balances.sum_close_balance_gbp,
              name: Sum Close Balance GBP, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#5E8AB4"
