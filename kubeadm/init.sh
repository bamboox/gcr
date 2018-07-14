cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=0
EOF
yum install -y  kubeadm kubectl kubelet


# docker run --rm -ti --pid=host --privileged --net=host -v /var/run/docker.sock:/var/run/docker.sock kubeadm bash 


# unable to get URL "https://dl.k8s.io/release/stable-1.10.txt": Get https://storage.googleapis.com/kubernetes-release/release/stable-1.10.txt: dial tcp 172.217.160.112:443: getsockopt: connection timed out
