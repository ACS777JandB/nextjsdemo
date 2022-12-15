# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY . /usr/src

# install dependencies
RUN npm install
RUN npm install -g serve

# start app
RUN npm run build
EXPOSE 3000
CMD npm run start
#EXPOSE 3000
#CMD serve -p build