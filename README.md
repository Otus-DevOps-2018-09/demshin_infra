# demshin_infra

demshin Infra repository

## homework 4

### The main task

testapp_IP = 35.234.120.58

testapp_port = 9292

### An additional task

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

### Additional task. How to connect with alis

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
