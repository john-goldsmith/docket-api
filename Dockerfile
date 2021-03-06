# Intentionally not using 10.12+ because of an issue with remote debugger
# breakpoints not working.
# See https://github.com/nodejs/node/issues/23693
FROM node:10.11-alpine
WORKDIR /var/app/current
# The following will capture both package.json and package-lock.json, if present.
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm" , "run", "start"]
