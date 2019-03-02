
# Overview

This repository is a reference implementation of the best-practice terragrunt resource definition.

## Requirements

* valid AWS account
* [terraform](https://github.com/hashicorp/terraform) >= 0.11.11
* [terragrunt](https://github.com/gruntwork-io/terragrunt) >= 0.18.0

## How to Use

1. edit bucket name in `stage/account.tfvars` and `prod/account.tfvars`:

```hcl
  ..
  bucket  = "(enter your bucket name for staging environment)"
  ..
```

2. `cd stage` or `cd prod`
1. `terragrunt plan-all`
1. `terragrunt apply-all`
1. `terragrunt destroy-all`
