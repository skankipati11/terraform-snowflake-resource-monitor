

resource "snowflake_resource_monitor" "tf_rm" {
  name = "example_resource_monitor"

  credit_quota = 200

  notify_triggers = [50, 80, 90]
  suspend_trigger = 100

  notify_users =   ["SKANKIPATI"] 

  frequency       = "MONTHLY"
  start_timestamp = formatdate("YYYY-MM-DD hh:mm", timeadd(plantimestamp(), "4h"))
  end_timestamp   = formatdate("YYYY-MM-DD hh:mm", timeadd(plantimestamp(), "100h"))

}