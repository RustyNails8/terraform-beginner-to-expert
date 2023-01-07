# terraform-beginner-to-expert

terraform-beginner-master-aws from Educative.op

## Terraform

Terraform is a tool for **building**, **changing**, and **versioning** **infrastructure** safely and efficiently. Essentially, it takes the infrastructure that you have defined in code and makes it real. The beauty of Terraform is that it does not ask you how to get from the infrastructure you have to the infrastructure you want. It simply asks you what you want the world to look like and then does the hard work.

> **Example :**
> In a Terraform project, you have defined that you **want four AWS EC2 instances.**

> If you currently have no EC2 instances, then when you run Terraform it will create four AWS EC2 instances.

> If you have three EC2 instances when you run Terraform, then Terraform will only create one additionalinstance and leave the three you already had.

> **If you have five AWS EC2 Instances, Terraform will delete one.**

> At no point does Terraform ask you how many instances you currently have, Terraform figures it out and then creates a plan for how to get from what you have to what you want and makes it happen.

## Chef and Puppet vs. Terraform

Chef and Puppet are configuration management tools. They are designed to configure and manage the software that is running on a machine (infrastructure) that already exists. Terraform, on the other hand, sits above that at the abstraction layer and is designed to set up all of the infrastructures that make up your system, such as load balancers, servers, DNS records, etc. In other words, Puppet and Chef are used to configure servers, while Terraform is used to create the server itself.

## Commands

```bash
terraform init
terraform fmt
terraform validate
terraform apply
terraform apply -auto-approve
terraform plan
terraform destory
```

## Provider model

Due to the provider model that Terraform employs, providers are not part of the main Terraform source code. They are separate binaries that live in their own repositories and can move at their own speed. This means that if a provider needs to release a bug fix or new feature, they can release it. They do not need to coordinate a release of the main Terraform code base.
