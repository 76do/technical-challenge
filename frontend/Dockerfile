FROM node:18-bullseye

RUN mkdir /app
WORKDIR /app

RUN npm install -g pnpm
RUN pnpm config set store-dir /root/.local/share/pnpm/store/v3 -g

COPY package.json /app/
COPY pnpm-lock.yaml /app/
RUN pnpm install

ADD . /app

EXPOSE 3001
