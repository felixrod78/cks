Create a network policy called mtdoom-np that allows specific traffic on port 80 to reach the mtdoom Pod in the mordor namespace.

The policy should allow incoming traffic from all Pods in the frodo namespace.

It should also allow incoming traffic from all Pods with the label app=sam, regardless of which namespace they are in.



cloud_user@k8s-cli:~$ k get pods -n mordor --show-labels
NAME     READY   STATUS    RESTARTS   AGE   LABELS
mtdoom   1/1     Running   0          29m   app=mtdoom
sam      1/1     Running   0          29m   app=sam
cloud_user@k8s-cli:~$ k get ns  -n mordor --show-labels
NAME              STATUS   AGE   LABELS
default           Active   31m   kubernetes.io/metadata.name=default
frodo             Active   30m   app=frodo,kubernetes.io/metadata.name=frodo
kube-node-lease   Active   31m   kubernetes.io/metadata.name=kube-node-lease
kube-public       Active   31m   kubernetes.io/metadata.name=kube-public
kube-system       Active   31m   kubernetes.io/metadata.name=kube-system
mordor            Active   30m   kubernetes.io/metadata.name=mordor,land=mordor
cloud_user@k8s-cli:~$ 