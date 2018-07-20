# pyvim-devel

Docker container for writing python code with VIM efficiently.


## Build the container

Clone the repository with

```
git clone --recursive https://github.com/windisch/pyvim-devel.git
```

and run

```
docker build ./pyvim-devel -t pyvim-devel
```


## Run the container

Run a container with

```
docker run -it --rm pyvim-devel
```

### Using your ssh private key within the container

At startup, the container copies keys mounted to `/ssh` to
`/root/.ssh/`. That is, all you have to do is to mount your ssh
directory into the container (of course, as read only):

```
docker run -it --rm -v ~/.ssh:/ssh:ro pyvim-devel
```
