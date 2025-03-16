FROM gitpod/workspace-full:latest

RUN sudo apt-get -y update

# OpenTofu
ADD https://get.opentofu.org/install-opentofu.sh /tmp/install-opentofu.sh
RUN sudo chmod 755 /tmp/install-opentofu.sh && sudo /tmp/install-opentofu.sh --install-method deb && sudo rm -f install-opentofu.sh

# Terragrunt
ADD https://github.com/gruntwork-io/terragrunt/releases/download/v0.75.10/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN sudo chmod 755 /usr/local/bin/terragrunt

# AWS CLI
ADD https://s3.amazonaws.com/aws-cli/awscli-bundle.zip /tmp/awscli-bundle.zip
RUN sudo apt-get -y install python3-venv && sudo unzip /tmp/awscli-bundle.zip -d /tmp && sudo python3 /tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# Task
ADD https://github.com/go-task/task/releases/download/v3.42.1/task_linux_amd64.tar.gz /tmp/task_linux_amd64.tar.gz
RUN sudo mv /tmp/task_linux_amd64 /usr/local/bin/task && sudo chmod 755 /usr/local/bin/task
