FROM centos:latest

USER root
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
RUN yum -y install libxml2 libxml2-devel libxslt libxslt-devel python-devel libffi-devel openssl-devel gcc; yum clean all
RUN pip install --upgrade pip

# Openstack
RUN pip install --upgrade --no-cache-dir setuptools openstacksdk python-openstackclient

# terraform
RUN yum -y install unzip; yum clean all
RUN curl https://releases.hashicorp.com/terraform/0.10.6/terraform_0.10.6_linux_amd64.zip > terraform_0.10.6_linux_amd64.zip
RUN unzip terraform_0.10.6_linux_amd64.zip
RUN mv terraform /usr/bin/

# composer
RUN yum install -y composer; yum clean all

# ansible
RUN yum install -y ansible; yum clean all

# git
RUN yum install -y git; yum clean all

# Specific addons
RUN echo 'cd /usr/share/source' >> ~/.bashrc

CMD ["/bin/bash"]
