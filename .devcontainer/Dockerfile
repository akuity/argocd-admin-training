FROM mcr.microsoft.com/vscode/devcontainers/base:buster

ENV ARGOCD_VERSION=v2.10.1
RUN curl -sSL -o /usr/local/bin/argocd "https://github.com/argoproj/argo-cd/releases/download/${ARGOCD_VERSION}/argocd-linux-amd64" \
    && chmod +x /usr/local/bin/argocd

ENV K3D_VERSION=v5.6.3
RUN wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=${K3D_VERSION} bash

RUN curl -Lo /tmp/cloud-provider-kind_0.1.0_darwin_amd64.tar.gz https://github.com/kubernetes-sigs/cloud-provider-kind/releases/download/v0.1.0/cloud-provider-kind_0.1.0_darwin_amd64.tar.gz \
    && tar -xvf /tmp/cloud-provider-kind_0.1.0_darwin_amd64.tar.gz -C /tmp \
    && mv /tmp/cloud-provider-kind /usr/local/bin/cloud-provider-kind \
    && chmod +x /usr/local/bin/cloud-provider-kind

ENV KUSTOMIZE_VERSION=v5.3.0
RUN curl -Lo /tmp/kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2F${KUSTOMIZE_VERSION}/kustomize_${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && tar -xvf /tmp/kustomize.tar.gz -C /tmp \
    && mv /tmp/kustomize /usr/local/bin/kustomize \
    && chmod +x /usr/local/bin/kustomize