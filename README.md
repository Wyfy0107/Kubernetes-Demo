# Kubernetes Demo

## Prerequisite

You should have the following installed:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

The container image used in this example is from my docker hub repo. You can build your own image and modify `pod.yml` to use your created image.

## Instruction

Run the following commands in the terminal.
Make sure you are inside the project directory.

1. `minikube start --driver=docker` to start the cluster
2. `kubectl apply -f kube` to create pods and service according to the template inside **kube** directory
3. `kubectl get pods --watch` to check that your pods are running
4. `kubectl port-forward service/hello-world 3000:80` to forward port 3000 on host to port 80 of the load balancer service
5. Now open `localhost:3000` or run `./scripts/test-lb.sh` to see the response from your pod

If you delete a pod: `kubectl delete pod {podName}` and refresh `localhost:3000`, you should see the load balancer route traffic to a different pod
