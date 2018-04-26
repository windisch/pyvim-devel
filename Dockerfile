# Pull base image.
FROM ubuntu:16.04

# Install Python2 and Python3
RUN \
  apt-get update && \
  apt-get install -y python3 python3-dev python3-pip && \
  apt-get install -y python python-dev python-pip && \
  rm -rf /var/lib/apt/lists/*

# Install GIT
RUN apt-get update && apt-get install -y git 

# Upgrade PIP
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip

# Install Ansible into python2 interpreter
RUN pip install ansible

# Deploy with ansible
COPY ansible/ /ansible/
RUN ansible-playbook /ansible/site.yml -i /ansible/inventory

# Define working directory.
WORKDIR /src

# Define default command.
CMD ["zsh"]
