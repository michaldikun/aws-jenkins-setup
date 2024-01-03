
FROM  node:lts-alpine3.17

WORKDIR /app

COPY /cowsay-michal /app 

RUN npm install express

COPY . .

ENV PORT=8080

RUN cd /app

ENTRYPOINT  ./entry-point.sh ${PORT}

CMD ["npm", "start"]
