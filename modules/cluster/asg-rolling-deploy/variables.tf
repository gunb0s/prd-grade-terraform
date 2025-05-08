# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "ami" {
  description = "The AMI to run in the cluster"
  type        = string
#   default = "ami-0d5bb3742db8fc264"
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string

#   validation {
#     condition     = contains(["t2.micro", "t3.micro"], var.instance_type)
#     error_message = "Only free tier is allowed: t2.micro | t3.micro."
#   }
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number

#   validation {
#     condition     = var.min_size > 0
#     error_message = "ASGs can't be empty or we'll have an outage!"
#   }

#   validation {
#     condition     = var.min_size <= 10
#     error_message = "ASGs must have 10 or fewer instances to keep costs down."
#   }
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number

#   validation {
#     condition     = var.max_size > 0
#     error_message = "ASGs can't be empty or we'll have an outage!"
#   }

#   validation {
#     condition     = var.max_size <= 10
#     error_message = "ASGs must have 10 or fewer instances to keep costs down."
#   }
}

variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}