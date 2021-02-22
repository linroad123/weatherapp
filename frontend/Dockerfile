FROM node:latest

LABEL description="This is the base docker image for the Openweather frontend react app."

WORKDIR /src/app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . /src/app

EXPOSE 3000

CMD ["npm", "start"]


