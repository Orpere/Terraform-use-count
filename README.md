# terraform-use-count -> repo that you can use to see how count with index and null_provider work

## How can I use this repository`?`

This repo has as dependencies a command line or shell git and terraform.You can find the install instructions bellow on [EXTRAS](#extras) section.

## How can I use this repo`?`

### 1 - clone repo terraform-use-count

- open your shell or command line and go to the directory where you pretend to add the repo.

```bash
cd <directory where pretend to add the repo>
```

```git
git clone git@github.com:orlando.pereira/terraform-use-count.git
```

### 2 - move to your repo folder

```bash
cd terraform-use-count
```

### 3 - terraform init

- this will retrieve all dependencies for terraform files.

```terraform
terraform init
```

### 4 - run terraform apply

```terraform
terraform apply
```

- This step will prompt `<<`Do you want to perform these actions?`>>`
  - the answer should be **yes**

### 5 - check the result

- In this case was used count plus index what should look like the bellow

```terraform

null_resource.server[0]: Creating...
null_resource.server[1]: Creating...
null_resource.server[0]: Provisioning with 'local-exec'...
null_resource.server[1]: Provisioning with 'local-exec'...
null_resource.server[1] (local-exec): Executing: ["/bin/sh" "-c" "echo 1"]
null_resource.server[0] (local-exec): Executing: ["/bin/sh" "-c" "echo 0"]
null_resource.server[1] (local-exec): 1
null_resource.server[1]: Creation complete after 0s [id=2637307108971509414]
null_resource.server[0] (local-exec): 0
null_resource.server[0]: Creation complete after 0s [id=7185187773844065705]
```

### 6 - Terraform destroy

```terraform
terraform destroy
```

- This will request confirmation and if your answer is **yes**
- this will wipe the resources you have builded
  
#### EXTRAS

This repo was based on the [documentation](https://www.terraform.io/docs/configuration/resources.html#count-index)

[Install git](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-intro-md)
for more instructions to use git you can check the [link](https://rogerdudler.github.io/git-guide/) it will have a much better explanation about all git steps

After clone the repo you can install terraform downloading the adequate version to your OS on [Terraform](https://www.terraform.io/downloads.html)
If you don't know how to install please follow the [tutorial](https://learn.hashicorp.com/terraform/getting-started/install.html)
