#/bin/bash
mvn clean package

echo "*****************************************************************************"
docker rmi quarkus-demo/springboot-todo:v1
docker rmi quay.io/naveenkendyala/quarkus-demo-springboot-todo:v1;
docker build -f src/main/build/docker/Dockerfile.jvm -t quarkus-demo/springboot-todo:v1 .; 

echo "*****************************************************************************"
docker tag quarkus-demo/springboot-todo:v1 quay.io/naveenkendyala/quarkus-demo-springboot-todo:v1;

echo "*****************************************************************************"
docker push quay.io/naveenkendyala/quarkus-demo-springboot-todo:v1;