#/bin/bash
#Quarkus Version
VERSION=v2.13.7

./mvnw clean package -Pnative -Dquarkus.profile=native -Dquarkus.native.container-build=true -Dquarkus.native.container-runtime=podman

echo "*****************************************************************************"
podman rmi quarkus-demo/quarkusnative-todo:${VERSION}
podman rmi quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}
podman build --no-cache -f src/main/build/docker/Dockerfile.native -t quarkus-demo-quarkusnative-todo:${VERSION} .;

echo "*****************************************************************************"
podman tag quarkus-demo-quarkusnative-todo:${VERSION} quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}; 

echo "*****************************************************************************"
podman push quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}
