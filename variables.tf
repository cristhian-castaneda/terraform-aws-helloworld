variable "greetings" {
  type        = string
  default     = "hello wooorrrlllddd this is a variable!!!"
  description = "The default greetings message"
}

variable "password" {
  type        = string
  description = "My secret password don't hack me pls"
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket to store the files"
}