FROM node:14-slim
WORKDIR /vue-app
COPY app/ .
RUN npm install
RUN npm i -g live-server
RUN npm build
EXPOSE 8080
CMD [ "live-server", "dist" ]