# Installing CORE and EMANE using Docker

The documentation provides a guide on how to install CORE 
and EMANE using the Dockerfile's in the CORE repo which builds 
off Ubuntu 22.04 images:
https://coreemu.github.io/core/install_docker.html
https://github.com/joshuamhtsang/core/blob/master/docs/install_docker.md

This is a good option to get CORE running especially if you're actually 
running Ubuntu 24.04.

Update 09/02/2025:

I followed the `docker build`, `docker run` and `docker exec` terminal
commands and managed to get CORE running!

![screenshot](images/docker_install_of_core.png)

It builds a docker image tagged as 'core' and runs a container also called 'core'.

```
$ docker ps
CONTAINER ID   IMAGE     COMMAND         CREATED         STATUS         PORTS     NAMES
8b60c281cc06   core      "core-daemon"   3 seconds ago   Up 2 seconds             core
```

Make sure you follow usual Docker clean up etiquette:
$ docker stop $(docker ps -a -q)
$ docker rm $(docker ps -a -q)
$ docker system prune


Next steps:  

1. Run python applications with venv in created hosts.  Say, a REST API.

2. Run docker applications in created hosts.

3. Run 'nrlsmf' in created hosts.

4. docker-compose or similar orchestration of multiple nodes in CORE.