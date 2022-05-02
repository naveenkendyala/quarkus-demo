#/bin/bash
#Quarkus Version
VERSION=v2.2

./mvnw clean package -Pnative -Dquarkus.profile=native -Dquarkus.native.container-build=true -Dquarkus.native.container-runtime=docker

echo "*****************************************************************************"
docker rmi quarkus-demo/quarkusnative-todo:${VERSION}
docker rmi quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}
docker build -f src/main/build/docker/Dockerfile.native -t quarkus-demo-quarkusnative-todo:${VERSION} .;

echo "*****************************************************************************"
docker tag quarkus-demo-quarkusnative-todo:${VERSION} quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}; 

echo "*****************************************************************************"
docker push quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:${VERSION}
