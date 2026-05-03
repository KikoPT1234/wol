FROM node:lts-alpine

WORKDIR /app

COPY . .

RUN apt install wakeonlan
RUN npm ci --omit=dev

EXPOSE 3000

CMD ["node", "."]