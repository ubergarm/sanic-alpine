sanic-alpine
===
Sanic web server in minimal Alpine Linux based image.

## Runnning
This image comes preloaded with the hello world demo `server.py`:
```bash
docker run --rm -it -p 8000:8000 ubergarm/sanic-alpine
```

Test it:
```bash
$ curl localhost:8000
{"hello":"world"}
```

## Development
Volume mount your own `sanic` project to run it within a container:
```bash
docker run --rm -it -v `pwd`:/app -p 8000:8000 ubergarm/sanic-alpine myserver.py
```

## Building
```bash
docker build -t ubergarm/sanic-alpine .
```

## Benchmarking
Use `docker inspect`, or use `link` to hit the right ip address:
```bash
# use docker inspect, or use `link` to hit the right ip address etc...
docker run --rm -it williamyeh/wrk -t4 -c400 -d30s http://172.17.0.1:8000
```

## Size

Currently about ~77MiB according to `docker images`.

## Thanks
This image is inspired by the `frol/docker-alpine-python3` image listed below. Thanks!

## References

* [channelcat/sanic](https://github.com/channelcat/sanic)
* [frol/docker-alpine-python3](https://github.com/frol/docker-alpine-python3)
* [Alpine Linux](https://alpinelinux.org/)
* [williamyeh/wrk](https://github.com/William-Yeh/docker-wrk)
* [wg/wrk](https://github.com/wg/wrk)
