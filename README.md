"# openshift" 

$ kubectl run jboss-app --image=jboss/myapp:1.0 --port=8080

$ kubectl expose pod jboss-app --port=8080 --target-port=8080 --type=NodePort --name=hello-svc 

$ kubectl get svc

NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE

hello-svc    NodePort    10.109.136.214   <none>        8080:32432/TCP   7s
  
kubernetes   ClusterIP   10.96.0.1        <none>        443/TCP          36h

  
$ curl -s http://localhost:32432/hello
