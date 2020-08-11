#/bin/bash
mvn clean package

echo "*****************************************************************************"
docker build -f src/main/build/docker/jvm.dockerfile -t springboot/springboot-jpa-api-jvm:$1 .; 


echo "*****************************************************************************"
docker tag springboot/springboot-jpa-api-jvm:$1 naveenkendyala/springboot-jpa-api-jvm:$1; 
docker tag springboot/springboot-jpa-api-jvm:$1 quay.io/naveenkendyala/springboot-jpa-api-jvm:$1; 


echo "*****************************************************************************"
docker push quay.io/naveenkendyala/springboot-jpa-api-jvm:$1; 
#docker push naveenkendyala/springboot-jpa-api-jvm:$1

