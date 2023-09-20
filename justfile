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
  make \
    local-{{ TARGET }} \
    DEST=_out
