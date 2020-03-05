variable container_image_name {
  type = string
  default = ""
  description = "The name of the Docker image to use, including the full repository URL if required."
}

variable container_image_tag {
  type = string
  default = "latest"
  description = "The tag of the Docker image to use."
}

variable vpc_id {
  type = string
  default = ""
  description = "The ID of the VPC in which resources are deployed."
}

variable subnet_ids {
  type = list(string)
  default = []
  description = "A list of Subnet IDs in which resources will be deployed."
}

variable deployment_name {
  type = string
  default = ""
  description = "An arbitrary name for the deployment."
}

variable tags {
  type = map(string)
  default = {}
  description = "A list of tags to apply to all resources."
}