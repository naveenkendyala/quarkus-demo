#Delete the Spring Boot
oc delete -f java/springboot-api/src/main/deployments/ocp

#Delete the Quarkus JVM
oc delete -f java/quarkus-api/src/main/deployments/ocp.jvm

#Delete the Quarkus Native
oc delete -f java/quarkus-api/src/main/deployments/ocp.native
