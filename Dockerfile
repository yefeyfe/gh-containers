FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.gq4oozm.mongodb.net
ENV MONGODB_USERNAME yefeyfe
ENV MONGODB_PASSWORD 2jlY6wkuF0602NTV

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]