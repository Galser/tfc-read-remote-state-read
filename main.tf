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
