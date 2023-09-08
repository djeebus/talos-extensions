build-and-push:
  docker buildx use local

  make \
    PKGS=v1.6.0-alpha.0-11-cca80b7 \
    TAG=1.5.1 \
    PLATFORM=linux/amd64 \
    REGISTRY=ghcr.io \
    USERNAME=djeebus/talos \
    PUSH=true \
    nonfree-kmod-nvidia-grid \
    nvidia-grid-fabricmanager \
    nvidia-grid-container-toolkit
