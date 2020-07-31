#Start the Spring Boot
#TODO

#Start the Quarkus JVM
oc apply -f java/quarkus-api/src/main/deployments/ocp.jvm

#Start the Quarkus Native
oc apply -f java/quarkus-api/src/main/deployments/ocp.native
