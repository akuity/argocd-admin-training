#!/bin/bash

echo "post-create start" >> ~/.status.log

# this runs in background after UI is available

k3d cluster create -p "9090:80@loadbalancer"

echo 'source <(kubectl completion bash)' >> /home/vscode/.bashrc
echo 'source <(argocd completion bash)' >> /home/vscode/.bashrc
echo 'source <(kustomize completion bash)' >> /home/vscode/.bashrc
echo 'alias k="kubectl"' >> /home/vscode/.bashrc
echo 'complete -F __start_kubectl k' >> /home/vscode/.bashrc

echo "post-create complete" >> ~/.status.log