# neon install for K8s
## 1. Create Image
```sh
$ docker build -t compute-custom:3000 ./
```

## 2. Deploy
```
$ kubectl apply -k namespace
$ kubectl apply -k install

# check pod status
$ kubectl get pod -n neoncluster

# wait pod starting
$ kubectl apply -k compute
```