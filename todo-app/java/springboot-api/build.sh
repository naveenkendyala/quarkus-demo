#/bin/bash
VERSION=v3.1.0
mvn clean package

echo "*****************************************************************************"
podman rmi quarkus-demo/springboot-todo:${VERSION}
podman rmi quay.io/naveenkendyala/quarkus-demo-springboot-todo:${VERSION};
podman build --no-cache -f src/main/build/docker/Dockerfile.jvm -t quarkus-demo/springboot-todo:${VERSION} .; 

echo "*****************************************************************************"
podman tag quarkus-demo/springboot-todo:${VERSION} quay.io/naveenkendyala/quarkus-demo-springboot-todo:${VERSION};

echo "*****************************************************************************"
podman push quay.io/naveenkendyala/quarkus-demo-springboot-todo:${VERSION};