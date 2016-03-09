# How to setup

### Build docker image
docker build --tag senz/mongodb .

### Run docker image
```
docker build --tag senz/mongodb .
docker run -d -v /opt/mongodb:/data/db -p 27017:27017 senz/mongodb
```
