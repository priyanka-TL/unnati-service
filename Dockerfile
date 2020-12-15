FROM node:12

WORKDIR /manage-learn-services/unnati-service

#copy package.json file
COPY package.json /manage-learn-services/unnati-service

#install node packges
RUN npm install

#copy all files 
COPY . /manage-learn-services/unnati-service

#expose the application port
EXPOSE 4301

#start the application
CMD node app.js
