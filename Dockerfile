FROM node:latest as build
WORKDIR /usr/src/app
COPY ./ /usr/src/app/
RUN npm install && npm install -g @angular/cli
RUN ng update
RUN ng build
EXPOSE 80
RUN chown -R node /usr/src/app
USER node
CMD ["npm", "start"]
