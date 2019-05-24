# kubernetes
### Setting
ssh node2.k8s
mkdir -p /root/data/gitea
mkdir -p /root/data/registry
### Install
kubectl apply -f . --recursive