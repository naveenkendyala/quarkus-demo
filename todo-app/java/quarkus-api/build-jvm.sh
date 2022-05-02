#/bin/bash
#Quarkus Version
VERSION=v2.2

./mvnw clean package -Dquarkus-profile=jvm

echo "*****************************************************************************"
docker rmi quarkus-demo/quarkusjvm-todo:${VERSION}
docker rmi quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};
docker build -f src/main/build/docker/Dockerfile.jvm -t quarkus-demo/quarkusjvm-todo:${VERSION} .;

echo "*****************************************************************************"
docker tag quarkus-demo/quarkusjvm-todo:${VERSION} quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};

echo "*****************************************************************************"
docker push quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:${VERSION};