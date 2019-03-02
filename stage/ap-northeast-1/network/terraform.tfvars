terragrunt = {
  terraform {
    source = "git::git@github.com:billthelizard/terragrunt-module-example.git//ap-northeast-1/network?ref=v1.0.0"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}

name = "example"
env = "stage"
cidr = "10.0.0.0/16"
public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
azs = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
