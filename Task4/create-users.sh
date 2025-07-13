# secure-operator user
openssl genrsa -out user.key 2048
openssl req -new -key user.key -out user.csr -subj "/CN=secure-operator/O=secure-operators-group"
kubectl config set-credentials secure-operator --client-certificate=user.pem --client-key=user.key

# devops user
openssl genrsa -out user2.key 2048
openssl req -new -key user2.key -out user2.csr -subj "/CN=devops/O=devops-group"
kubectl config set-credentials devops --client-certificate=user2.pem --client-key=user2.key