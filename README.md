# demshin_infra

demshin Infra repository

## homework Terraform-2

### The main task. Simple infrastructure using modules

- added options for various keys in variables.tf
- setup starage on buckets for tfsate & tfstate.lock

## homework Terraform-1

### The main task. Simple infrastructure with variables

Tasks on page #49. Work with variables.

### An additional task. Add few keys to project metadata

Adding keys with [google_compute_project_metadata](https://www.terraform.io/docs/providers/google/r/compute_project_metadata.html).
When you adding a key via the GCP web console and running command `terraform apply` after that added key erased.

### An additional task. Http load balncer

Описание балансировщика для приложения в `lb.tf`, использованы `google_compute_forwarding_rule`, `google_compute_target_pool`, `google_compute_http_health_check` и параметр `count` для инстанса. Если инстансов приложения несколько, то при "падении" любого оно остается доступным.

## homework Packer

### The main task. Template User Variables

- Creating template with user variables (with default values and reqired values).
- Creating `variables.json.example`, set variables at `variables.json` (only local, not at remote git repository)
- Add some other options of GCP.

To check run commands:

```bash
cd packer
packer validate -var-file=variables.json ubuntu16.json
packer build -var-file=variables.json ubuntu16.json
```

And view at GCP web console.

### An additional task. Immutable infrastructure

Creating template `immutable.json` with user variables `variables-reddit.json`, additional files at `files` directory.

### An additional task. Create instance with script & gcloud

Use shell script `./config-scripts/create-reddit-vm.sh`.

## homework 4

### The main task. Create scripts

testapp_IP = 35.234.120.58

testapp_port = 9292

### An additional task. Create app from file or url

#### Create app with startup script from file

```bash
gcloud compute instances create reddit-app-2\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=./startup.sh
```

#### Create app with startup script from url

```bash
gcloud compute instances create reddit-app-2\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata startup-script-url=https://raw.githubusercontent.com/Otus-DevOps-2018-05/demshin_infra/cloud-testapp/startup.sh
```

#### Create firewall rule for puma app

```bash
gcloud compute firewall-rules create default-puma-server\
  --allow=tcp:9292 \
  --target-tags=puma-server
```

## homework 3

### How to connect to someinternalhost with one command

This solution uses ProxyJump option.

```bash
ssh -i .ssh/id_rsa -A -J demshin@35.198.185.22 10.156.0.3
```

### Additional task. How to connect with alias

This solution uses ProxyJump option too.
Add some configuration to ssh config.

```bash
 echo "Host someinternalhost
    HostName 10.156.0.3
    User demshin
    ProxyJump demshin@35.198.185.22" >> ~/.ssh/config
```

And try to connect `ssh someinternalhost`.

### Setting up vpn server on bastion

bastion_IP = 35.198.185.22
someinternalhost_IP = 10.156.0.3

## homework 2

Text for test travis and slack integration.
