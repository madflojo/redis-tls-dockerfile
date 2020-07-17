# Docker image for Redis

[![Build Status](https://travis-ci.com/madflojo/redis-tls-dockerfile.svg?branch=master)](https://travis-ci.com/madflojo/redis-tls-dockerfile) 

Redis + stunnel Dockerfile for TLS on top of Redis.

## Features
- Stunnel for TLS
- Redis password support

## Starting Container 

### without password

```console
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --name redis-tls madflojo/redis-tls
```

### with password

```console
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --env REDIS_PASS="<<password here>>" --name redis-tls madflojo/redis-tls
```

### For persistence, mount /data

```console
$ docker run --restart=always -d -p 6379:6379 -v /path/to/certs:/certs -v /hostpath/to/redisdatabackup:/data --env REDIS_PASS="<<password here>>" --name redis-tls madflojo/redis-tls
```


The `/path/to/certs` should be a directory on the host that contains the appropriate `cert.pem` and `key.pem` files for `stunnel` to provide TLS encryption.
