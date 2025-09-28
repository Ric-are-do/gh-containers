FROM node:16

# Mongo connection details for local dockerized MongoDB
ENV MONGODB_CONNECTION_PROTOCOL mongodb
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS my-mongo:27017
ENV MONGODB_USERNAME myuser
ENV MONGODB_PASSWORD mypassword

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
