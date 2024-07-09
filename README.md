# tailscale-kubernetes

[Tailscale](https://tailscale.com/) is one of the most disruptive
and awesome networking technologies aviable to solve tricky networking 
problems. In particular tailscale is an ideal technology to use with 
Kubernetes. This repo demos the features of the tailscale Kuberentes Operator.

* how to make LoadBalancer obect that work on local k8s such as DockerDesktop
* How to secure expose Kuberentes workloads on a private VPN so only you can access them 

## Prerequeiste 

### Tailnet 
* A good understading of tailscale
* A tailscale account 
* A tailnet configured with MagicDNS turned on

### Kuberentes Cluster
* A Kuberentes cluster such as Docker Desktop K8s, minikube or a cloud based k8s 
* Kuberetes  

## Install the Operator 

1. Create a client id and secret following the steps in [Prerequisites](https://tailscale.com/kb/1236/kubernetes-operator#prerequisites)

2. store the client id in an environment variable called `TS_CLIENT_ID`

3. store the client secret in an environment variable called `TS_CLIENT_SECRET`

4. Make sure that you are kubectl is point at the culster to install tailscale on. Run 
```shell
kubectl cluster-info 
```
to validate what cluster you are working with.

5. run the script `./01-install-tailscale.sh` to install the operator 

6. Check that all the k8s resources for the tailscale are running 

```shell
kubectl get all -n tailscale
```

You should see something like 

```text
NAME                            READY   STATUS    RESTARTS   AGE
pod/operator-7c474dcc46-ldlj6   1/1     Running   0          5m2s

NAME                       READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/operator   1/1     1            1           5m2s

NAME                                  DESIRED   CURRENT   READY   AGE
replicaset.apps/operator-7c474dcc46   1         1         1       5m2s
```

6. Run the `tailscale status` and you should see machine called `local-k8s` 
   if you don't have tailscale cli setup, then use the tailscole web console, 
   and look under machines you should the operator show up there. 

## Try out the operator

follow the numbered shell scripts in this repo, study thier code and output 


## Resources

[Tailscale Kubernets Operator Docs](https://tailscale.com/kb/1236/kubernetes-operator)
[Securing User to Service Access in Kubernetes - Maya Kaczorowski & Maisem Ali, Tailscale](https://www.youtube.com/watch?v=yvbNdZxonSs)