cat cluster.sh 
k3d cluster create ripal-practical \
    --api-port 127.0.0.1:6554 \
    --servers 1 \
    --agents 1 \
    --image rancher/k3s:latest \
    --port 30800-30900:30800-30900@server:0 \
    --port 80:80@loadbalancer \
    --port 443:443@loadbalancer 
