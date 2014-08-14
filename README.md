쉽게 쓰여진 Docker
==================

Dev environment
---------------

- Mac OS X 10.9.4

Setup
-----

0. Download [boot2docker](https://github.com/boot2docker/osx-installer/releases)
0. Run below commands
    $ boot2docker init
    $ boot2docker start
    $ export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
0. To stop or restart docker
    $ boot2docker stop
    $ boot2docker download
    $ boot2docker start

Make an image
-------------

There is a two way

One is pull a docker image from docker hub [repo](https://registry.hub.docker.com/u/carpedm20/ubuntu/)
    $ docker pull carpedm20/ubuntu
Second is a build a image with Dockerfile
    $ docker build -t carpedm20/ubuntu:python
