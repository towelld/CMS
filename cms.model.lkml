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
}

explore: running_balance {
  persist_for: "5 minutes"
}
