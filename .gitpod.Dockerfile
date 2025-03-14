FROM gitpod/workspace-full:latest

RUN yum -y update

# OpenTofu
ADD https://get.opentofu.org/install-opentofu.sh /tmp/install-opentofu.sh
RUN chmod 755 /tmp/install-opentofu.sh && /tmp/install-opentofu.sh --install-method deb && rm -f install-opentofu.sh

# Terragrunt
ADD https://github.com/gruntwork-io/terragrunt/releases/download/v0.75.10/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN chmod 755 /usr/local/bin/terragrunt
