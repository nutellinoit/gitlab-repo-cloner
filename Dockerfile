FROM python:2.7-alpine3.6
RUN apk update && \
    apk upgrade && \
    apk add git openssh
ADD src /src
WORKDIR /src
RUN python setup.py install --force
WORKDIR /tmp
RUN git config --global http.postbuffer 524288000
RUN git config --global pack.windowMemory 256m
ENTRYPOINT ["gital"]
