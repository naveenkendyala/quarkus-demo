#/bin/bash
#Quarkus Version
VERSION=v2.13.7

./mvnw clean package -Dquarkus.profile=jvm

echo "*****************************************************************************"
podman rmi quarkus-demo/quarkusjvm-todo:${VERSION}
podman rmi quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};
podman build --no-cache -f src/main/build/docker/Dockerfile.jvm -t quarkus-demo/quarkusjvm-todo:${VERSION} .;

echo "*****************************************************************************"
podman tag quarkus-demo/quarkusjvm-todo:${VERSION} quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};

echo "*****************************************************************************"
podman push quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};