terragrunt = {
  remote_state {
    backend = "s3"

    config {
      encrypt        = true
      bucket         = "(enter your bucket name for staging environment)"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "ap-northeast-1"
      dynamodb_table = "terraform-locks"
      profile        = "stage"
    }
  }

  terraform {
    extra_arguments "-var-file" {
      commands = ["${get_terraform_commands_that_need_vars()}"]

      optional_var_files = [
        "${get_tfvars_dir()}/${find_in_parent_folders("account.tfvars", "ignore")}",
      ]
    }
  }
}
