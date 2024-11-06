# terraform-aws-iac

## Description

This repository contains the Terraform infrastructure code to deploy a basic infrastructure for a web application. It provisions and manages the required resources on AWS. 

## Getting Started

These instructions will help you get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

-   [Terraform](https://www.terraform.io/downloads.html) installed locally
-   A HCP Terraform account ([Sign up here](https://app.terraform.io/signup/account))
-   [AWS Account](https://aws.amazon.com/) and credentials set up

### Installation

1. Clone this repository: `git clone https://github.com/jordanholtdev/terraform-aws-iac.git`
2. Change into the project directory: `cd terraform-aws-iac`
3. Sign in to HCP Terraform using the command: `terraform login`
4. Initialize Terraform: `terraform init`
5. Modify the `variables.tf` file to configure the desired infrastructure settings. 
6. Commit and push your changes to the repository.

## HCP Terraform Configuration

To configure HCP Terraform for this project, follow these steps:

1. Log in to [HCP Terraform](https://app.terraform.io) using your HCP Terraform account.
2. Create a new workspace for this project.
3. Connect the workspace to your repository if you would like to use the [VCS-driven workflow](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change)
4. Set up the required [variable sets](https://developer.hashicorp.com/terraform/tutorials/cloud/cloud-multiple-variable-sets) in the workspace, such as API keys, credentials, or any environment-specific configuration.

## Usage

To provision and manage the infrastructure using HCP Terraform:

1. Make changes to the Terraform code as needed.
2. Commit and push your changes to the repository.
3. HCP Terraform will automatically detect the changes and trigger a run.
4. Monitor the run status and logs through the HCP Terraform UI.
5. If necessary, update the variables or make configuration changes in the HCP Terraform workspace.