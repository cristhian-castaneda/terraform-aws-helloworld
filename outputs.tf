output "my_password" {
  value     = var.password
  sensitive = true
}

output "my_custom_output" {
  value     = "I want to see within spinnaker pipeline context"
  sensitive = false
}
