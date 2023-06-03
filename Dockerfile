FROM node:16
ENV NODE_ENV=production

# WORKDIR /Users/holanda/coding/docker-workshop-nodejs/src/

WORKDIR /Users/holanda/coding/docker-workshop-nodejs/src/

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "app.ts"]
