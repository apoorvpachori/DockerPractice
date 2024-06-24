#choose an environment or runtime
FROM node:19-alpine

#copy source files into the docker container
COPY package.json /app/
COPY src /app/

#choose a directory
WORKDIR /app

#run any set up commands
RUN npm install 

# this command is the last one for it to start the application!
CMD ["node","server.js"]