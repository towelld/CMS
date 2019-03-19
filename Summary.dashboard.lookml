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
  - name: subsidiary
    type: field_filter
    model: cms
    explore: balances
    field: balances.subsidiary
  - name: bank
    type: field_filter
    model: cms
    explore: balances
    field: balances.bank
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
  - name: post_date
    type: field_filter
    model: cms
    explore: balances
    field: balances.post_date


  elements:
    - name: balance
      left: 0
      top: 0
      height: 4
      width: 6
      title: Balance
      model: cms
      explore: balances
      type: looker_pie
      fields: [balances.currency, balances.sum_close_balance_gbp]
      filters:
        balances.account_no: ''
        balances.bank: ''
        balances.currency: ''
        balances.post_date: 2019/02/28
        balances.subsidiary: ''
      sorts: [balances.sum_close_balance_gbp desc]
      limit: 500
      value_labels: legend
      label_type: labPer
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
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      inner_radius: 40
