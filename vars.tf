variable "name" {
  type        = string
  description = "Name prefix for resources to be created"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "image" {
  default     = "actions-runner"
  description = "Name of GitHub actions runner VM image"
}

variable "docker_image" {
  description = "GitHub actions runner docker image"
}

variable "ssh_key" {
  type        = string
  description = "SSH key to be placed into a runner instance authorized keys"
}

variable "group_size" {
  default     = 1
  description = "Size of runner instances group size"
}

variable "github_url" {
  type        = string
  description = "GitHub organization/user URL"
}

variable "github_token" {
  type        = string
  description = "GitHub runner authentication token"
}

variable "github_labels" {
  type        = string
  description = "GitHub runner additional labels"
}

variable "service_account" {
  type        = string
  description = "Service account to be assigned to a runner instance"
}

variable "zones" {
  type        = list(string)
  description = "List of zones to attach runners group to"
}

variable "subnets" {
  type        = list(string)
  description = "List of subnets to attach runners group to"
}

variable "platform_id" {
  default     = "standard-v2"
  description = "Runner instance platform id"
}

variable "preemptible" {
  default     = true
  description = "Indicates whether the runner instances are preemptible"
}

variable "cpu" {
  default     = 2
  description = "Number of CPU cores per a runner instance"
}

variable "core_fraction" {
  default     = 100
  description = "CPU core fraction guarantied for a runner instance (percents)"
}

variable "mem" {
  default     = 1
  description = "Amount of RAM in GB allocated for a runner instance"
}

variable "disk_size" {
  default     = 10
  description = "Disk size of a runner instance"
}

variable "disk_type" {
  default     = "network-ssd"
  description = "Disk type of a runner instance"
}
