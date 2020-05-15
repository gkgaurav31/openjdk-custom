# This is a sample Dockerfile which has SSH enabled. 
## The image has an init script which replaces SSH_PORT variable in the /etc/sshd_config file while the container is coming up. 
## In order to test it: 

## Build the Image: 
docker build -t test . 

## Run the container: 
docker run -d -p 8080:8080 -p 2222:2222 -e SSH_PORT=2222 --name test test

## The SpringBoot application should be running on port 8080 now. 

## Test SSH: 
ssh root@localhost -p 2222

## Please note that this is a sample and is not maintained.