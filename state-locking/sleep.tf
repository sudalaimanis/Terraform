resource "null_resource" "previous" {}

resource "time_sleep" "wait_100seconds"{
  destroy_duration = "100s"
}