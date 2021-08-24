# Florist shop

## docker-compose image
Configuration file for `docker-compose`. To run simply `cd` into directory and use:
`docker-compose up -d`
  or alternatively:
```
docker-compose build
docker-compose up -d
```
---
## single docker image
To create a single container `cd` into directory and use:
```
docker build -t YOUR_TAG .
docker run -d -p 4200:4200 -p 8080:8080 YOUR_TAG
```
