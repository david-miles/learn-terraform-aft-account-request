# module "sandbox" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "admin+sandbox@fictonica.com"
#     AccountName               = "Fictonica Sandbox"
#     ManagedOrganizationalUnit = "Learn AFT"
#     SSOUserEmail              = "admin+sandbox@fictonica.com"
#     SSOUserFirstName          = "Sandbox"
#     SSOUserLastName           = "AFT"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "HashiCorp Learn"
#     change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "sandbox"
# }

module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+prod@fictonica.com"
    AccountName               = "Fictonica Prod"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+prod@fictonica.com"
    SSOUserFirstName          = "Prod"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "ProvisionedVia" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Fictonica DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Fictonica Prod"
}

module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+prod@fictonica.com"
    AccountName               = "Fictonica Dev"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+dev@fictonica.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "AFT"
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

  account_customizations_name = "Fictonica-Dev"
}


module "uat" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+prod@fictonica.com"
    AccountName               = "Fictonica UAT"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+uat@fictonica.com"
    SSOUserFirstName          = "UAT"
    SSOUserLastName           = "AFT"
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

  account_customizations_name = "Fictonica-UAT"
}

module "networking" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "admin+prod@fictonica.com"
    AccountName               = "Fictonica Networking"
    ManagedOrganizationalUnit = "Fictonica Workload"
    SSOUserEmail              = "admin+networking@fictonica.com"
    SSOUserFirstName          = "UAT"
    SSOUserLastName           = "AFT"
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