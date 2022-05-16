#!/bin/bash
aws ecr create-repository --repository-name mydocker-test
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 090887888547.dkr.ecr.us-east-1.amazonaws.com
docker build -t mydocker-test .
docker tag mydocker-test:latest 090887888547.dkr.ecr.us-east-1.amazonaws.com/mydocker-test:latest
docker push 090887888547.dkr.ecr.us-east-1.amazonaws.com/mydocker-test:latest
