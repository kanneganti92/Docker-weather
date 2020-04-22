FROM ubuntu:15.04
COPY . /app
RUN make /app
CMD python /app/app.py

use .dockerignore

===Working with Instructions===

sudo yum install git -y

mkdir docker_images

cd docker_images

mkdir weather-app
cd weather-app

git clone https://github.com/linuxacademy/content-weather-app.git src

vi Dockerfile

FROM node
LABEL org.label-schema.version=v1.1
RUN mkdir -p /var/node
ADD src/ /var/node
WORKDIR /var/node
RUN npm install
EXPOSE 3000
CMD ./bin/www
