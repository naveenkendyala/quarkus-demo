#oc scale deployment.apps/springboot-jpa-api-jvm-deploy --replicas=$1
oc scale deployment.apps/quarkus-jvm-todo-dc --replicas=$1
oc scale deployment.apps/quarkus-native-todo-dc --replicas=$1

