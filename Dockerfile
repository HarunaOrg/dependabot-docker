FROM node:alpine@sha256:cf40424687c3bb932a34ab852198ed4df96eca0b052b61b0ddf43f5fd9684bde

WORKDIR /usr/src/app
COPY package.json .
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]

COPY . .
