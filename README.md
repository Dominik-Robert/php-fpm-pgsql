# php-fpm-pgsql

This Dockerfile includes a complete php8-fpm installation with the pgsql extensions available to use it with your php-application inside a nginx webserver

# Usage
To use it you can Download and use the prebuild container or build it on your own

```bash
# download the prebuild image
docker pull ghcr.io/dominik-robert/php-fpm-pgsql:latest
```

```bash
# build the image on your own
git clone git@github.com:Dominik-Robert/php-fpm-pgsql.git 
docker build -t php8-fpm:pgsql . 
```
