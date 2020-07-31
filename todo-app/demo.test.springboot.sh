while true; 
do { 
  curl http://`oc get routes/springboot-todo-route -o=jsonpath='{.spec.host}'`/todos | jq;
  sleep 1; 
  clear; 
}
done;
