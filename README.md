# PCP CONTROL REPO

## Authors

* Guto Carvalho (gutocarvalho@gmail.com)
* Miguel Di Ciurcio Filho (miguel.filho@gmail.com)

## Overview

This repo is used by PCP project itself.

If you want more information about PCP

    http://github.com/puppet-br/pcp

### Contributors

* Adriano Vieira
* Taciano Tres
* Jairo Junior

## Structure

```
- environments
- - production
- - - Puppetfile
- - - environment.conf
- - - hieradata
- - - - nodes
- - - - - puppet-pcpm.hacklab.yaml
- - - - Debian-8.yaml
- - - - RedHat-7.yaml
- - - - common.yaml
- - - manifests
- - - - site.pp
- - - site
- - - - profile
- - - - - manifests
- - - - - - mcollective
- - - - - - - client.pp
- - - - - - - server.pp
- - - - - - puppet
- - - - - - - hiera.pp
- - - - - - - agent.pp
- - - - - - - server.pp
- - - - - - puppetdb
- - - - - - - app.pp
- - - - - - - database.pp
- - - - - - - frontend.pp
- - - - - - activemq.pp
- - - - - - ntp.pp
- - - - role
- - - - - manifests
- - - - - - broker.pp
- - - - - - puppetdb.pp
- - - - - - puppetmaster.pp
- - - - - - pcpm.pp
```
