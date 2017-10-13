# README

The purpose of this application is just to learn how to interact with
production docker within the AWS Cloud Formation system.

## Running

1. install docker
2. install docker compose
3. install awscli (needs python 3 and pip)
4. get aws key pair with access to repo
5. log into aws from command line - `$(aws ecr get-login)`
6. start application - `docker-compose up`
7. navigate to http://localhost:3000

## Helpful Hints

* build cloud formation stack for the first time:

    aws cloudformation create-stack --stack-name fivethreeone --template-body file://$PWD/stack.yml --region us-east-2

* view stack resources

    aws cloudformation describe-stack-resources --stack-name fivethreeone --region us-east-2

