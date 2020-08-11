#Start the Springboot
oc apply -f java/springboot-api/src/main/deployments/ocp

#Start the Quarkus JVM
oc apply -f java/quarkus-api/src/main/deployments/ocp.jvm

#Start the Quarkus Native
oc apply -f java/quarkus-api/src/main/deployments/ocp.native
