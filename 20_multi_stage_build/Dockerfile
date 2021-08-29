FROM node:14.2 AS builder
WORKDIR /app

COPY ./package.json ./package-lock.json ./.travis.yml /app/

RUN npm install

COPY ./public/ /app/public/
COPY ./src/ /app/src/

RUN npm run build

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/build/ /var/www/
COPY --from=builder /app/build/ /var/www/counter-app/


