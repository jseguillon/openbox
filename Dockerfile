FROM centos:latest

USER root
#RUN yum -y update; yum clean all
RUN apk add --no-cache py2-yaml python python-dev py-pip build-base 
RUN apk add --no-cache linux-headers ca-certificates gcc musl-dev python3-dev libffi-dev openssl-dev
RUN pip install --upgrade pip

# Openstack
RUN pip install --upgrade --no-cache-dir setuptools openstacksdk python-openstackclient

# terraform
RUN apk add --no-cache unzip curl
RUN curl https://releases.hashicorp.com/terraform/0.11.0/terraform_0.11.0_linux_amd64.zip > terraform_0.11.0_linux_amd64.zip
RUN unzip terraform_0.11.0_linux_amd64.zip
RUN mv terraform /usr/bin/

# ansible
RUN apk add --no-cache ansible

# git
RUN apk add --no-cache git

# Specific addons
RUN apk add --no-cache bash
RUN echo 'cd /usr/share/source' >> ~/.bashrc

CMD ["/bin/bash"]
