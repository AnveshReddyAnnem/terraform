variable "userlist" {
  type    = list(string)
  default = ["anvesh1", "anvesh2"]
}

variable "password" {
  type        = string
  description = "Temporary password"
  default     = "Str0ng3stP@sswd3ver!"
}