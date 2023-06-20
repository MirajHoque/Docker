#parent image download form either local computer  or docker hub repository
FROM node:16-alpine

#WORKDIR: Working directory for the docker image
#tells docker when we run cmd in the future after this instruction do it inside this directory
WORKDIR /app

#copy all of source code with this image
#COPY: copy some file to image
# .(relative path)->where to copy
#.(root) directory of image. Image has there own folder structure
COPY package.json .

#install project dependency on this image
#RUN: to specify a command(buidl time)
RUN npm install

COPY . .

#EXPOSE: tell docker which port is going to exposed by the container
EXPOSE 4000 

#CMD: specify any command that should be run at the run time when the container begains to run
#CMD: written as array of string
CMD [ "node", "app.js" ]

