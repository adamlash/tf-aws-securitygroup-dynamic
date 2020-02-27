variable "name" {
  description = "Name of SG"
  type        = string
  default     = ""
}

variable "description" {
  description = "Group Description"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC for SG"
  type        = string
  default     = ""
}

variable "ingress_cidrs" {
  type        = list(map(string))
  description = "Map of Ingress CIDR config"
}

variable "tags" {
  description = "Array of Tags"
  type        = map(string)
  default     = {}
}