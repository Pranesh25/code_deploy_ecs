#!/bin/bash
echo "hello after install"
aws ecs run-task --cluster default --task-definition pthon-task:10
