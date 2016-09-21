# redis-tls-dockerfile

Redis + stunnel Dockerfile for TLS on top of Redis

## Starting Container

```console
$ docker run -d -p 6379:6379 -v /path/to/certs:/certs --name redis-tls madflojo/redis-tls
```

The `/path/to/certs` should be a directory on the host that contains the appropriate `cert.pem` and `key.pem` files for `stunnel` to provide TLS encryption.
