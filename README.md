# DevOps Engnieer ND Project 1: Deploying a Web Server in Azure

## Usage

You can customize and deploy a Web Server in Azure using this application

### Download

Download from the source

```text
git clone https://github.com/fehlen501602/nd082-Azure-Cloud-DevOps-Starter-Code.git
```

### Customize the server image file

open the `server.json` and enter your own values for the `client_id`, `client_secret` and `subscription_id`

```text
    "builders": [{
        "type": "azure-arm",

        "client_id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",
        "client_secret": "ppppppp-pppp-pppp-pppp-ppppppppppp",
        "subscription_id": "yyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyy",

        "os_type": "Linux",
        "image_publisher": "Canonical",
        "image_offer": "UbuntuServer",
        "image_sku": "18.04-LTS",
    
        "managed_image_resource_group_name": "packer-rg",
        "managed_image_name": "myPackerImage",

        "azure_tags": {
            "dept": "Project_1",
            "task": "Image deployment"
        },
    
        "location": "West Europe",
        "vm_size": "Standard_D2s_v3"
    }],
```

### Build the server image with Packer

Go to the folder of `starter_files`

```text
cd C1 - Azure Infrastructure Operations\project\starter_files
```

Build the image with Packer

```text
packer build server.json
```

### Customize the Terraform file

open the `var.tf`
Customize aspects of Terraform modules with input variables.

### Deploy the infrastructure with Terraform

After the managed image named `myPackerImage` is already built in the resource group `packer-rg`, now you can deploy the infrastructure and save the by running:

```text
terraform init
terraform plan -out solution.plan 
```

A solution plan is produced. Your result should be like this:

```text
Plan: 11 to add, 0 to change, 0 to destroy.
```

Finally you can deploy the infrastructure by running:

```text
terraform apply
```
