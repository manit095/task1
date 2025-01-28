This is simple time service app in python and dockerized

Repository structure
  1. app.py
  2. Dockerfile

To Build and test the docker image
  1. docker build -t timeservice

After successfull build
  1. docker run -d -p 5000:5000 timeservice

Visit the http://localhost:5000 in the local system to check the app output

Pushing image to DockerHub
  1. docker login
  2. docker tag timeservice <Your-dockerhub-user-name>/timeservice:latest
  3. docker push <Your-dockerhub-user-name>/timeservice

## My build image can be pulled by using the below command

docker pull manitkumar095/timeservice:latest
