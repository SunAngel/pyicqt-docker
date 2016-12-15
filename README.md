# PyICQ-t Docker image
[PyICQ-t](https://github.com/shizeeg/pyicqt) XMPP to ICQ transport Docker image based on [Debian Linux](https://hub.docker.com/_/debian/).

Also in my [Github repository](https://github.com/VGoshev/pyicqt-docker) you can find some usefull scripts for helping running containers.

## Supported tags and respective `Dockerfile` links

* [`latest`](https://github.com/VGoshev/pyicqt-docker/blob/master/docker/Dockerfile) - PyICQ-t from debian stable repository

## Quickstart

To run container you can use following command:
```bash
docker run \  
  -v /home/docker/pyicqt:/home/pyicqt \  
  -ti sunx/pyicqt
```
After first run container will create default configuration files for PyiCQ-t in `/home/pyicqt/` directory, which you should edit manually. Default configuration file is well documented, so you shouldn't have any problems in changeing it.

## Detailed description of image and containers

### Volume
This image uses one volume with internal path `/home/pyicqt`, it will store configuration file and some data.

I would recommend you use host directory mapping of named volume to run containers, so you will not lose your valuable data after image update and starting new container.

## License

This Dockerfile and scripts are released under [MIT License](https://github.com/VGoshev/pyicqt-docker/blob/master/LICENSE).

[PyICQ-t](https://github.com/shizeeg/pyicqt/blob/master/COPYING) has its own license.
