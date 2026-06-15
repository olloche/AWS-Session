FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV STATIC_DIR=client
EXPOSE 3000
CMD [ "npm", "start" ]

