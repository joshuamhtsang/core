# Running python scripts within CORE nodes

Imagine we have 2 nodes running in CORE...

Each node has its own directory to keep files and mounted directories (`/tmp/pycore.<session id>/<node name.conf`).
[https://coreemu.github.io/core/nodetypes.html]

This is the directory you get when you 'double click' a CORE node.  However, you can access the entire directory tree of the
CORE host if you want.

Try setting up a venv in here?

Alternatively try the docker nodes in CORE and setting up dockerfiles for each node.

# Commands to enter a node's specific directory:

For node 'n1':

```
$ bash 5_run_bash_in_core_container.sh

root@95540ae0ad4f:~# cd /tmp/pycore.1/n1.conf/

root@95540ae0ad4f:/tmp/pycore.1/n1.conf# ls
defaultroute.sh  var.log  var.run
```