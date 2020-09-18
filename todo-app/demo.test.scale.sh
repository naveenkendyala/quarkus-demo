oc project quarkus-demo
oc scale deployment.apps/springboot --replicas=$1
oc scale deployment.apps/quarkus-jvm --replicas=$1
oc scale deployment.apps/quarkus-native --replicas=$1

