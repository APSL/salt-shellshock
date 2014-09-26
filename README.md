======================
shellshock bash update
======================

This recipe tries to upgrade bash from OS pkg, and falls back to 
compile bash on systems with no update available.

Works for us on ubuntu/debian.

Bash install script from:
http://askubuntu.com/questions/528101/what-is-the-cve-2014-6271-bash-vulnerability-and-how-do-i-fix-it

Usage
=====

Can be used as an gitfs salt formula:

```yaml
fileserver_backend:
    - roots
    - git
 
gitfs_remotes:
    - git://github.com/APSL/salt-shellshock.git
```

Runit:

```sh
    $ sudo salt "*" state.sls shelshock
```
