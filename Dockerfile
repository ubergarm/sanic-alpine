FROM alpine:edge

RUN apk add --no-cache python3 \
                       python3-dev \
                       build-base \
                       git && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install git+git://github.com/channelcat/sanic.git@master && \
    apk del python3-dev \
            build-base \
            git && \
    rm -r /root/.cache

COPY ./server.py /server.py

ENTRYPOINT ["/usr/bin/python3"]

CMD ["/server.py"]

