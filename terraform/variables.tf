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

variable container_environment_variables {
  type = list(
    object({
      name = string
      value = string
    })
  )
  description = "An array of environment variable names and values to be passed in to the container definition."
  default = []
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

variable lb_certificate_arn {
  type = string
  default = ""
  description = "The ARN of a certificate to be used on the Elastic Load Balancer. If blank, an HTTPS listener will not be created."
}

variable ssl_policy {
  type = string
  default = ""
  description = "The SSL Policy to apply to the ALB. Only used if the 'lb_certificate_arn' variable is set. See https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies for details."
}