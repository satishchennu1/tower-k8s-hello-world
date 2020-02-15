## Use  node js image alpine version from image registries.
FROM node:10.19-alpine
## Set the directory in the container to /app to store files and launch our app.
WORKDIR /app
## Copy the app to /app directory with dependencies.
COPY package.json /app
RUN npm install
COPY . /app
## Run our app which is index.js.
CMD node index.js
##  Exposes the port where our app is running that is port 8080.
EXPOSE 8080
