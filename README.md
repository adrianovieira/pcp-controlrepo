# PCP CONTROL REPO

## Autores

* Guto Carvalho (gutocarvalho@gmail.com)
* Miguel Di Ciurcio Filho (miguel.filho@gmail.com)

## Overview

Este repo é utilizado pelo projeto PCP e PCP-M.

Ele é invocado através da ferramenta R10K e faz a instalação dos módulos necessários
para instalação do Puppet Community Plataform (PCP).

Mais informações acesse

    http://github.com/gutocarvalho/pcp

### Contribuidores

* Adriano Vieira

## Estrutura

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
