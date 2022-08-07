provider "github"{
token ="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"
}

//provider "aws"{
//}

//provider "megha"{
//}

//will show the provider but while apply it will through an error
resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-from-terraform"
  description = "first repo created by terraform"
  visibility = "public"
  auto_init = true  //will create the read.me file

  }

  resource "github_repository" "terraform-second-repo" {
  name        = "second-repo-from-terraform"
  description = "second repo created by terraform"
  visibility = "public"
  auto_init = true  //will create the read.me file

  }


//terraform providers - command is used to list the providers

//terraform apply -auto-approve

// terraform destroy --target github_repository.terraform-second-repo