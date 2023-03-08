#!/usr/bin/expect -f
 
set timeout -1
spawn bin/elasticsearch-setup-passwords interactive
expect "N]"
send -- "y\n"
expect "elastic]: "
send -- "password\n"
expect "elastic]: "
send -- "password\n"
expect "apm_system]: " 
send -- "password\n"
expect "apm_system]: " 
send -- "password\n"
expect "kibana]: "
send -- "password\n"
expect "kibana]: "
send -- "password\n"
expect "logstash_system]: "
send -- "password\n"
expect "logstash_system]: "
send -- "password\n"
expect "beats_system]: "
send -- "password\n"
expect "beats_system]: "
send -- "password\n"
expect "remote_monitoring_user]: "
send -- "password\n"
expect "remote_monitoring_user]: "
send -- "password\n"
expect eof










root@es-cluster-0 elasticsearch]# ./xpct.sh 
spawn bin/elasticsearch-setup-passwords interactive
Initiating the setup of passwords for reserved users elastic,apm_system,kibana,logstash_system,beats_system,remote_monitoring_user.
You will be prompted to enter passwords as the process progresses.
Please confirm that you would like to continue [y/N]y


Enter password for [elastic]: 
Reenter password for [elastic]: 
Enter password for [apm_system]: 
Reenter password for [apm_system]: 
Enter password for [kibana]: 
Reenter password for [kibana]: 
Enter password for [logstash_system]: 
Reenter password for [logstash_system]: 
Enter password for [beats_system]: 
Reenter password for [beats_system]: 
Enter password for [remote_monitoring_user]: 
Reenter password for [remote_monitoring_user]: 
Changed password for user [apm_system]
Changed password for user [kibana]
Changed password for user [logstash_system]
Changed password for user [beats_system]
Changed password for user [remote_monitoring_user]
Changed password for user [elastic]
[root@es-cluster-0 elasticsearch]# 









#kubectl exec es-cluster-0 -c elasticsearch -n elasticsearch-kibana -- ls /

tcl-8.5.13-8.el7.x86_64
expect-5.45-14.el7_1.x86_64

yum localinstall -y sample_file.rpm




https://stackoverflow.com/questions/42642170/how-to-run-kubectl-commands-inside-a-container


apiVersion: extensions/v1beta1
kind: Pod
metadata:
  labels:
    app: k8s-101
spec:
  serviceAccountName: k8s-role
  containers:
  - name: elasticsearch-security
    imagePullPolicy: Always
    image: msplva-dsnsmt71.csc.nycnet:5000/dsny/elasticsearch-passwordsetter:7.5.2
---
kind: ClusterRoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: k8s-role
subjects:
- kind: ServiceAccount
  name: k8s-role
  namespace: default
roleRef:
  kind: ClusterRole
  name: cluster-admin
  apiGroup: rbac.authorization.k8s.io
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: k8s-role




The salathielgenese/k8s-101 image contains kubectl. So one can just log into a pod container & execute kubectl as if he was running it on k8s host: kubectl exec -it pod-container-id -- kubectl get pods

share