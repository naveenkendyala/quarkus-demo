#/bin/bash
./mvnw clean package -Dquarkus-profile=jvm

echo "*****************************************************************************"
docker rmi quarkus-demo/quarkusjvm-todo:v1
docker rmi quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:v1;
docker build -f src/main/build/docker/Dockerfile.jvm -t quarkus-demo/quarkusjvm-todo:v1 .; 

echo "*****************************************************************************"
docker tag quarkus-demo/quarkusjvm-todo:v1 quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:v1;

echo "*****************************************************************************"
docker push quay.io/naveenkendyala/quarkus-demo-quarkusjvm-todo:v1;
