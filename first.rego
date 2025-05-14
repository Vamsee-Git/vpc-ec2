package main
import future.keywords.in

deny[msg] {
  some r in input.resource_changes
  r.type == "aws_instance"
  r.change.after.instance_type == "t2.micro"
  msg := "EC2 instance type 't2.micro' is not allowed"
}
