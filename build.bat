@echo off
ssh-keygen -q -t rsa -N '' -f ./id_rsa
docker build -t packiarajd/docker-ansible:ver.1 .
docker run --rm -it docker-ansible ansible --version
