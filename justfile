build-and-push PKGS='':
  docker buildx use local

  make \
    PKGS={{ PKGS }} \
    TAG=v1.5.1 \
    PLATFORM=linux/amd64 \
    REGISTRY=ghcr.io \
    USERNAME=djeebus/talos \
    PUSH=true

  make \
    PKGS={{ PKGS }} \
    TAG=v1.5.1 \
    PLATFORM=linux/amd64 \
    REGISTRY=ghcr.io \
    USERNAME=djeebus/talos \
    PUSH=true \
    nonfree

dump TARGET:
  #!/usr/bin/env bash

  pushd ../talos-pkgs && PKGS=$(git describe --tag --always --dirty) && popd

  make \
    PKGS=${PKGS} \
    TAG=v1.5.1 \
    PLATFORM=linux/amd64 \
    REGISTRY=ghcr.io \
    USERNAME=djeebus/talos \
    DEST=_out \
    local-{{ TARGET }}
