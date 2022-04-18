docker build -t cartservice:v0.1 .
kind load docker-image cartservice:v0.1
kubectl rollout restart deployment/cartservice