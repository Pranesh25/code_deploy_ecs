#!/bin/bash
echo "hello before install.sh"
aws ecs update-service --cluster default --service python-service --force-new-deployment
