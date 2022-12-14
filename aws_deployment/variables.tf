variable "instance_name" {
  description = "Value of the instance name of our EC2"
  type        = string
  default     = "Infinity Server"
}

variable "key_pem" {
  description = "Full path to AWS key.pem"
  type        = string
  default     = "Edit with the full path to your pem key ; usually ~/.ssh/*.pem or ~/Downloads/*.pem"
}
