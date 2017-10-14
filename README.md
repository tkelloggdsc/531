# README

The purpose of this application is just to learn how to interact with
production docker within the AWS Cloud Formation system.

## Running

1. install docker
2. install docker compose
3. install awscli (needs python 3 and pip)
4. get aws key pair with access to repo (and `chmod 400` to the private key)
5. log into aws from command line - `$(aws ecr get-login)`
6. create database - `docker-compose run web rails db:create`
7. migrate database - `docker-compose run web rails db:migrate`
6. start application - `docker-compose up`
7. navigate to http://localhost:3000

## Helpful Hints

* build cloud formation stack for the first time:

      aws cloudformation create-stack --stack-name fivethreeone --template-body file://$PWD/stack.yml --region us-east-1 --parameters ParameterKey=DBUser,ParamaterValue=[REDACTED] ParameterKey=DBPass,ParameterValue=[REDACTED]

* view stack resources

      aws cloudformation describe-stack-resources --stack-name fivethreeone --region us-east-1

* delete stack

      aws cloudformation delete-stack --stack-name fivethreeone --region us-east-1

* get the public ip address from the aws console under the ec2 instance of the cloudformation stack detail page
* ssh into ec2 app instance

      aws -i [ssh key path] ubuntu@[ipaddress]

