FROM node:lts-alpine

WORKDIR /app

COPY . .

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
    wakeonlan
RUN chmod +x shutdown.sh
RUN chmod +x start.sh
RUN npm ci --omit=dev

EXPOSE 3000

CMD ["node", "."]