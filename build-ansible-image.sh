#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ./id_rsa <<<y 2>&1 >/dev/null
docker build -t packiarajd/docker-ansible:ver.2 .
docker run --rm -itd --name ansible_server packiarajd/docker-ansible:ver.2
