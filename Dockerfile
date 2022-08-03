FROM node:14-slim
WORKDIR /vue-app
COPY . .
RUN npm install
RUN npm i -g live-server
RUN npm run build
EXPOSE 3000
CMD [ "live-server", "dist" ]