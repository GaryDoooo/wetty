Web Term Interface for Python TTY Programs 
-----------------

It's modified from wetty. It loads the python codes into docker file, and connects the default start point at the python program. 

The script start_game.sh is the entry point to launch the python program.

Install and Run
---------------

This repo includes a Dockerfile you can use to run a Dockerized version of wetty.  You can run
whatever you want!

Just do:

```
docker build .    	
docker run --name term -p 80:3000 -dt THE_DOCKER_IMAGE_BUILT
```

Visit the appropriate URL in your browser (`[localhost|$(boot2docker ip)]`).  

