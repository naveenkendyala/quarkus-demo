#/bin/bash
./mvnw clean package -Pnative -Dquarkus.profile=native -Dquarkus.native.container-build=true -Dquarkus.native.container-runtime=docker

echo "*****************************************************************************"
docker rmi quarkus-demo/quarkusnative-todo:v1
docker rmi quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:v1
docker build -f src/main/build/docker/Dockerfile.native -t quarkus-demo-quarkusnative-todo:v1 .; 

echo "*****************************************************************************"
docker tag quarkus-demo-quarkusnative-todo:v1 quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:v1; 

echo "*****************************************************************************"
docker push quay.io/naveenkendyala/quarkus-demo-quarkusnative-todo:v1
