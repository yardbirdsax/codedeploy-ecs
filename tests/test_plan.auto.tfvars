aws_region_name = "us-east-1"
subnet_ids = ["a","b"]
vpc_id = "abcdef"
deployment_name = "testdeployment"
container_image_name = "nginx"
container_image_tag = "latest"
container_environment_variables = [
  {name = "MY_FIRST_VAR", value = "VALUE"},
  {name = "MY_SECOND_VAR", value  = "VALUE2"}
]
container_secrets = [
  {name = "MY_FIRST_SECRET", valueFrom = "ARN:VALUE"},
  {name = "MY_SECOND_SECRET", valueFrom = "ARN:VALUE2"}
]
lb_certificate_arn = "arn:aws:cert:something"
desired_count = 1
container_cpu = 512
container_memory = 1024
task_exec_role_policies = [
  "arn:aws:rightpolicy"
]
task_role_policies = [
  "arn:aws:righttaskpolicy"
]
health_check_path = "/api/health"
health_check_timeout = 30
health_check_interval = 60
security_group_ids = [
  "securitygroup-1234"
]
termination_wait_time = 1