FROM python:2.7-alpine3.6
RUN apk update && \
    apk upgrade && \
    apk add git openssh
ADD src /src
WORKDIR /src
RUN python setup.py install --force
WORKDIR /tmp
ENTRYPOINT ["gital"]
