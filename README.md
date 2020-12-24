# Redis with TLS Dockerfile

![Redis Logo](redis-logo.png)

[![Build Status](https://travis-ci.com/madflojo/redis-tls-dockerfile.svg?branch=master)](https://travis-ci.com/madflojo/redis-tls-dockerfile) [![Docker Pulls](https://img.shields.io/docker/pulls/madflojo/redis-tls)](https://hub.docker.com/r/madflojo/redis-tls)

This project produces an Open Source Redis Docker image with TLS support. This project uses the base Open Source Redis docker image and stunnel to create a TLS wrapped Redis instance.

## Using this Image

**Start Redis with TLS:**

```console
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --name redis-tls madflojo/redis-tls
```

The `/path/to/certs` should be a directory on the host that contains the appropriate `cert.pem` and `key.pem` files for `stunnel` to provide TLS encryption.

**Require password authentication for Redis:**

```console
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --env REDIS_PASS="<<password here>>" \
  --name redis-tls madflojo/redis-tls
```

Use the `$REDIS_PASS` environment variable to require clients to authenticate with this Redis server.

**Additional Options to Redis Start Command:**

```consol
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --env REDIS_PASS="<<password here>>" \
  --env REDIS_CMD_OPTS="--appendonly yes"  --name redis-tls madflojo/redis-tls
```

Use the `$REDIS_CMD_OPTS` environment variable to pass any command-line arguments to the Redis server start command.

**Start with Persistence:**

```console
$ docker run --restart=always -d -p 6379:6379 -v /path/to/certs:/certs \ 
  -v /hostpath/to/redisdatabackup:/data --env REDIS_PASS="<<password here>>" \ 
  --name redis-tls madflojo/redis-tls
```

To retain data throughout container restarts, use Docker's volume maps to mount the data directory to a host-level directory.

## Contributing

Thank you for your interest in helping develop this project. The time, skills, and perspectives you contribute to this project are valued.

### How can I contribute?

Bugs, Proposals, Feature Requests, and Questions are all welcome by creating an Issue or using Discussions. Please provide as much detail as you can in your request.
