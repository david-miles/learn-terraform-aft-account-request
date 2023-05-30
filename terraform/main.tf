module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+prodacc@fictonica.com"
    AccountName               = "Fictonica Prod"
    ManagedOrganizationalUnit = "Production Workload"
    SSOUserEmail              = "admin+prodacc@fictonica.com"
    SSOUserFirstName          = "admin"
    SSOUserLastName           = "prod"
  }

  account_tags = {
    "ProvisionedVia" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Fictonica DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Fictonica Prod"
}

module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+dev@fictonica.com"
    AccountName               = "Fictonica Dev"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+dev@fictonica.com"
    SSOUserFirstName          = "admin"
    SSOUserLastName           = "dev"
  }

  account_tags = {
    "ProvisionedVia" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Fictonica DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Fictonica Dev"
}


module "uat" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+uat@fictonica.com"
    AccountName               = "Fictonica UAT"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+uat@fictonica.com"
    SSOUserFirstName          = "admin"
    SSOUserLastName           = "uat"
  }

  account_tags = {
    "ProvisionedVia" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Fictonica DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Fictonica UAT"
}

module "networking" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+networking@fictonica.com"
    AccountName               = "Fictonica Networking"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+networking@fictonica.com"
    SSOUserFirstName          = "admin"
    SSOUserLastName           = "networking"
  }

  account_tags = {
    "ProvisionedVia" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Fictonica DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Fictonica Networking"
}