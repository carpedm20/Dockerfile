Easily written Docker
=====================

This is a basic guideline for making a Ubuntu image on your machine.
I created this repo to avoid entering same commands everytime when I reinstall Ubuntu to my laptop..


Setup for Mac
-------------

1. Download [boot2docker](https://github.com/boot2docker/osx-installer/releases)
2. Run below commands

        $ boot2docker init
        $ boot2docker start
        $ export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375
3. To stop or restart docker

        $ boot2docker stop
        $ boot2docker download
        $ boot2docker start


Setup for Windows
-----------------

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](https://www.vagrantup.com/downloads.html)
3. Install [Git](http://msysgit.github.io/)
4. Enter below commands using `cmd`

        $ git clone https://github.com/docker/docker.git
        $ cd git
        $ vagrant up
        $ vagrant ssh
5. Enter below commands inside of Virtual machine

        $ apt-get update
        $ apt-get install -y lxc-docker
        $ docker run hello-world


Make an image
-------------

There is a two way

One is pull a docker image from docker hub [repo](https://registry.hub.docker.com/u/carpedm20/ubuntu/)

    $ docker pull carpedm20/ubuntu
Second is a build a image with Dockerfile

    $ docker build -t carpedm20/ubuntu:python
