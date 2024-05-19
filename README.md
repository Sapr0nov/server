# server
## Rapid project deployment

Load repository
```bash
 sudo apt install git
```

```bash
 git clone git@github.com:Sapr0nov/server.git && cd server
```

Here we load our sub-project (site or web app)
```bash
 git submodule add git@github.com:Sapr0nov/infrador.com.git
```

Grant execution rights install.sh

```bash
 chmod +x install.sh
```

Install applications and packages

```bash
 ./install.sh
``` 

Rename docker-compose.example.yml to docker-compose.yml

```bash
 cp docker-compose.example.yml docker-compose.yml
```

Add nessessory config to nginx/conf.d
```bash
 cp /home/user/preparefile/infrador.com nginx/infrador.com
```

 Run dockers

 ```bash
 docker compose up -d
```


## CertBot
Test get certificate (for example domain = infrador.ru)
 ```bash
docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --dry-run -d infrador.ru
```

Get certificate (for example domain = infrador.ru)
 ```bash
docker compose run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ -d infrador.ru
```
