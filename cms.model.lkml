connection: "ctc"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: records {
  persist_for: "5 minutes"
}

explore: balances {
  persist_for: "5 minutes"
  join: records {
    sql_on: ${records.account_no} = ${balances.account_no} and ${records.post_date} = ${balances.post_date};;
    relationship: many_to_one
  }
}

explore: running_balance {
  persist_for: "5 minutes"
}
