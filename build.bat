@echo off
ssh-keygen -q -t rsa -N '' -f ./id_rsa <<<y 2>&1 >/dev/null
docker build -t packiarajd/docker-ansible:ver.1 .
docker run --rm -it docker-ansible ansible --version
