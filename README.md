# tfc-read-remote-state-read
Access remote state in tfc

We have another [repo prepared](https://github.com/Galser/tfc-random-pet) and run initiated in TFC cloud.

This repository going to demo accessing the state of the `tfc-random-repo` in the code.

# Code

```
data "terraform_remote_state" "tfc_random_pet" {
  backend = "remote"

  config = {
    organization = "galser-business"
    workspaces = {
      name = "tfc-random-pet"
    }
  }
}

# Terraform >= 0.12
output "remote-state-pet-demo" {
  value = data.tfc_random_pet.outputs.demo
}

# Terraform <= 0.11
#resource "aws_instance" "foo" {
#  # ...
#  subnet_id = "${data.terraform_remote_state.vpc.subnet_id}"
#}
```
