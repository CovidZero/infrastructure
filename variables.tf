variable "region" {
  description = "AWS region to build this infrastructure"
  default = "us-east-1"
}
variable "github_token" {
  description = "GitHub OAuth key"
  default = ""
}
variable "app_name" {
  description = "application base unique name"
  default = "testium"
}
variable "app_port" {
  description = "application port"
  default = 5000
}
variable "use_ssl" {
  description = "use SSL? yes or no"
  default = "no"
}
variable "protected_endpoint" {
  description = "application protected endpoint"
  default = "/version"
}
variable "admin_remote_ipset" {
  description = "list of ips authorized to access the protected endpoint"
  default = [
    {
      value = "67.170.164.232/32"
      type  = "IPV4"
    },
  ]
}
variable "environment" {
  description = "Name of an environment (e.g. staging, qa, production)"
  default = "paolo"
}
variable "repository_owner" {
  description = "Github repository username"
  default = "paoloo"
}
variable "repository_name" {
  description = "GitHub repository name"
  default = "st"
}
variable "repository_branch" {
  description = "Github repository branch"
  default = "master"
}
variable "base_domain" {
  description = "top level domain where application should respond"
  default ="rally-dev.io"
}
variable "vpc_cidr" {
  description = "base CIDR for VPC"
  default = "10.77.0.0/16"
}
variable "deploy_min_t"   {
  description = "Minimum healthy tasks during the deployment"
  default = 0
}
variable "deploy_max_t"   {
  description = "Maximum healthy tasks during the deployment"
  default = 100
}
variable "scale_min" {
  description = "Minimun nodes to scale down"
  default = 1
}
variable "scale_max" {
  description = "Maximum nodes to scale up"
  default = 3
}
variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default = "2"
}
variable "app_count" {
  description = "Number of docker containers to run"
  default = 1
}
variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default = "512"
}
variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default = "2048"
}
