# AWS Compute Sentinel Policies for Terraform
Welcome to the AWS Compute Sentinel Policies library for managing AWS EC2 instances provisioned through Terraform. In this library, you can find policies that can be seamlessly implemented with Terraform Cloud and Terraform Enterprise to enhance your infrastructure provisioning and management processes.  

[![Sentinel](https://img.shields.io/badge/Sentinel-white)](https://www.hashicorp.com/sentinel)
[![Terraform](https://img.shields.io/badge/Terraform-white)](https://app.terraform.io/) 

> **NOTE:**
>
> 1. This Policy Library does not provide an exhaustive list of all possible policy configurations for an AWS instance.
> 2. Generate your own mocks to test the policies against your planned infrastructure.
> 3. Avoid pushing real infrastructure mocks to the VCS, as they may contain sensitive information.
> 4. Feel free to open an issue to suggest additional policies or any recommendations for improvement.
> 5. I used HashiCorp repositories [ [Terraform-Sentinel-Policies](https://github.com/hashicorp/terraform-sentinel-policies), [policy-library-aws-networking](https://github.com/hashicorp/policy-library-aws-networking-terraform) ] as a reference for creating this Library
---

### Policies included
- restricting volume termination in prod **based on Environment tag** | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/restrict-volume-termination-in-production/restrict-volume-termination-in-production.sentinel)
- restricting volume size | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/restrict-volume-size/restrict-volume-size.sentinel)
- restricting instance types for development and testing **based on Environment tag** | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/restrict-instance-types/restrict-instance-types.sentinel)
- enforcing volume encryption | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/enforce-volume-encryption/enforce-volume-encryption.sentinel)
- enforcing mandatory tags | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/enforce-mandatory-tags/enforce-mandatory-tags.sentinel)
- denying public ip association to instances | [Code](https://github.com/samanxsy/policy-library-aws-compute-terraform/blob/master/policies/deny-public-ip-association/deny-public-ip-association.sentinel)

### Testing the policies
To simplify running `sentinel test` for each policy, a [Makefile]() has been created that helps running **`sentinel test <policy-path>`** command in a shorter format from the repo root directory:
```
# Format
make <policy-directory-name>

# Example
make enforce-mandatory-tags
```
