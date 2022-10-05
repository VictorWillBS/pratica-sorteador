FROM node:16

WORKDIR /usr/src

COPY . /usr/src/

EXPOSE 5000

RUN npm i && npm run build && npx prisma generate


CMD ["npm","start"]