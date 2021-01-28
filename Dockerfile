FROM node:10-slim
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY . .
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]