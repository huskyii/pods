#!/usr/bin/env sh

git clone --depth=1 https://github.com/Py-KMS-Organization/py-kms.git
docker build pykms -t ghcr.io/huskyii/pods/pykms:alpine3.19-minimal-$(cd pykms/py-kms; git rev-parse --short HEAD) -f pykms/Dockerfile.minimal
docker push ghcr.io/huskyii/pods/pykms:alpine3.19-minimal-$(cd pykms/py-kms; git rev-parse --short HEAD)

docker build . -t ghcr.io/huskyii/pods/apline:3.19-ustc -f alpine/3.19/Dockerfile
docker push ghcr.io/huskyii/pods/apline:3.19-ustc
