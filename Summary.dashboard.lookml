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
  - name: currency
    type: field_filter
    model: cms
    explore: balances
    field: balances.currency
  - name: subsidiary
    type: field_filter
    model: cms
    explore: balances
    listens_to_filters:
    - currency
    field: balances.subsidiary
  - name: account_no
    type: field_filter
    model: cms
    explore: balances
    listens_to_filters:
    - currency
    field: balances.account_no
  - name: bank
    type: field_filter
    model: cms
    explore: balances
    listens_to_filters:
    - currency
    field: balances.bank

  elements:
    - name: currency_pie
      title: Currencies (GBP)
      left: 0
      top: 0
      height: 4
      width: 8
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
      sorts: [balances.currency]
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
      left: 8
      top: 0
      height: 4
      width: 8
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
      sorts: [balances.bank]
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
      left: 16
      top: 0
      height: 4
      width: 8
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
      sorts: [balances.subsidiary]
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
      width: 8
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.sum_close_balance_gbp, balances.currency]
      pivots: [balances.currency]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc 0, balances.currency]
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
      label_color: ["#B4B4B4"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: AUD, name: AUD,
              axisId: balances.sum_close_balance_gbp}, {id: CAD, name: CAD, axisId: balances.sum_close_balance_gbp},
            {id: EUR, name: EUR, axisId: balances.sum_close_balance_gbp}, {id: GBP, name: GBP,
              axisId: balances.sum_close_balance_gbp}, {id: USD, name: USD, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#646569"

    - name: banks_bar
      title: Banks (GBP)
      left: 8
      top: 4
      height: 4
      width: 8
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.bank, balances.sum_close_balance_gbp]
      pivots: [balances.bank]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc 0, balances.bank]
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
      label_color: ["#B4B4B4"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: BNP, name: BNP,
              axisId: balances.sum_close_balance_gbp}, {id: Deutsche Bank, name: Deutsche
                Bank, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#646569"



    - name: subsidiaries_bar
      title: Subsidiaries (GBP)
      left: 16
      top: 4
      height: 4
      width: 8
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.sum_close_balance_gbp, balances.subsidiary]
      pivots: [balances.subsidiary]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance_gbp desc 0, balances.subsidiary]
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
      label_color: ["#B4B4B4"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Gresham
                Europe, name: Gresham Europe, axisId: balances.sum_close_balance_gbp},
            {id: Gresham North America, name: Gresham North America, axisId: balances.sum_close_balance_gbp},
            {id: Gresham United Kingdom, name: Gresham United Kingdom, axisId: balances.sum_close_balance_gbp}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance_gbp: "#646569"

    - name: currencies_ccy_bar
      title: Currencies
      left: 0
      top: 8
      height: 4
      width: 8
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.sum_close_balance, balances.currency]
      pivots: [balances.currency]
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        post_date: balances.post_date
        subsidiary: balances.subsidiary
      sorts: [balances.sum_close_balance desc 0, balances.currency]
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
      label_color: ["#B4B4B4"]
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: AUD, name: AUD,
              axisId: balances.sum_close_balance}, {id: CAD, name: CAD, axisId: balances.sum_close_balance},
            {id: EUR, name: EUR, axisId: balances.sum_close_balance}, {id: GBP, name: GBP,
              axisId: balances.sum_close_balance}, {id: USD, name: USD, axisId: balances.sum_close_balance}]}]
      show_dropoff: false
      series_colors:
        balances.sum_close_balance: "#646569"

    - name: balance_area
      title: Balance (GBP)
      left: 8
      top: 8
      height: 4
      width: 16
      model: cms
      explore: balances
      type: looker_area
      fields: [balances.post_date, balances.sum_close_balance_gbp]
      fill_fields: [balances.post_date]
      filters:
        balances.post_date: before 2019/02/28
      listen:
        account_no: balances.account_no
        bank: balances.bank
        currency: balances.currency
        subsidiary: balances.subsidiary
      sorts: [balances.post_date]
      limit: 500
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
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      show_null_points: true
      point_style: none
      interpolation: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      ordering: none
      show_null_labels: false
      series_types: {}
      series_colors:
        balances.sum_close_balance_gbp: "#646569"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: balances.sum_close_balance_gbp,
              name: Balances Sum Close Balance GBP, axisId: balances.sum_close_balance_gbp}]}]

    - name: account_bar
      title: Account Balance (GBP)
      left: 0
      top: 12
      height: 4
      width: 24
      model: cms
      explore: balances
      type: looker_column
      fields: [balances.account_no, balances.sum_close_balance_gbp]
      pivots: [balances.account_no]
      filters:
        balances.account_no: ''
        balances.bank: ''
        balances.currency: ''
        balances.post_date: 2019/02/28
        balances.subsidiary: ''
      sorts: [balances.account_no]
      limit: 500
      stacking: ''
      show_value_labels: true
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
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: '10292912',
              name: '10292912', axisId: balances.sum_close_balance}, {id: '10928771',
              name: '10928771', axisId: balances.sum_close_balance}, {id: '16365364',
              name: '16365364', axisId: balances.sum_close_balance}, {id: '18178176',
              name: '18178176', axisId: balances.sum_close_balance}, {id: '20918174',
              name: '20918174', axisId: balances.sum_close_balance}, {id: '27187161',
              name: '27187161', axisId: balances.sum_close_balance}, {id: '28238281',
              name: '28238281', axisId: balances.sum_close_balance}, {id: '29102830',
              name: '29102830', axisId: balances.sum_close_balance}, {id: '31202918',
              name: '31202918', axisId: balances.sum_close_balance}, {id: '46161251',
              name: '46161251', axisId: balances.sum_close_balance}, {id: '46262711',
              name: '46262711', axisId: balances.sum_close_balance}, {id: '48181713',
              name: '48181713', axisId: balances.sum_close_balance}, {id: '49171610',
              name: '49171610', axisId: balances.sum_close_balance}, {id: '52828281',
              name: '52828281', axisId: balances.sum_close_balance}, {id: '61515163',
              name: '61515163', axisId: balances.sum_close_balance}, {id: '61717261',
              name: '61717261', axisId: balances.sum_close_balance}, {id: '63811333',
              name: '63811333', axisId: balances.sum_close_balance}, {id: '71649134',
              name: '71649134', axisId: balances.sum_close_balance}, {id: '71817123',
              name: '71817123', axisId: balances.sum_close_balance}, {id: '77716161',
              name: '77716161', axisId: balances.sum_close_balance}]}]
      hide_legend: true
      font_size: 8px
