FROM centos:7
COPY ./init.sh /
RUN /init.sh
RUN sed -i "s/cgroup-driver=systemd/cgroup-driver=cgroupfs/g" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf