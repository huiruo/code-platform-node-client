FROM node:alpine

WORKDIR /app

COPY /src ./src

COPY package*.json ./

COPY nodemon.json ./

RUN npm install

ENV PORT=3008

EXPOSE 3008

CMD [ "npm", "run","prod"]

# docker build -t node-client .
# “.”表示Dockerfile所在的当前目录
# docker run -p 3008:3008 node-client
# 查看build之后目录
# docker run --rm node-client ls /app
