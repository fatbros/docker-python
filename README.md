# docker-python

## COMMAND
```
docker network create --driver bridge front_driver
docker network create --driver bridge back_driver
```

put nodejs, python application file
on the `python/app`, `nodejs/app` directory

```
docker-compose build
docker-compose up
```
