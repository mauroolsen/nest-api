FROM node:16.15

RUN npm install -g pnpm

WORKDIR /src

COPY package*.json ./

RUN pnpm install

COPY . .

EXPOSE 3000

CMD ["pnpm", "run", "start:dev"]
