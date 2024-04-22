#!/bin/bash

echo "post-start start" >> ~/.status.log

kind export kubeconfig --name workshop

source ~/.bashrc

echo "post-start complete" >> ~/.status.log