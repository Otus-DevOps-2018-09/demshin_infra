# demshin_infra

demshin Infra repository

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
