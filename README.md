# README

The purpose of this application is just to learn how to interact with
production docker within the AWS Cloud Formation system.

## Models

users
- has_many programs

program
- belongs_to user
- has_many workouts

workout
- belongs_to program
- has_many lifts
- date

lift
- has_many sets
- lift_type: [accessory|main]
- name
- required_sets
- completed_sets

set
- belongs_to lift
- required_weight
- completed_weight

## User Stories

As a user I should be able to record my workouts in 531
As a user I should be able to add custom weight and reps
As a user I should have a calculator that calculates the workouts I need to do
(maybe)

## Tech stack

Server - Rails 5 api
Client - create-react-app w/ redux
Docker
AWS Container Service
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

      aws cloudformation create-stack --stack-name fivethreeone --template-body file://$PWD/stack.json --region us-east-1 --parameters file://$PWD/.env.production.json

* view stack resources

      aws cloudformation describe-stack-resources --stack-name fivethreeone --region us-east-1

* delete stack

      aws cloudformation delete-stack --stack-name fivethreeone --region us-east-1

* get the public ip address from the aws console under the ec2 instance of the cloudformation stack detail page
* ssh into ec2 app instance

      aws -i [ssh key path] ubuntu@[ipaddress]

