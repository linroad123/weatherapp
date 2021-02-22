FROM node:latest

LABEL description="This is the base docker image for the Openweather backend API."

WORKDIR /src/app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . /src/app

EXPOSE 9000

CMD ["npm", "run","dev"]





