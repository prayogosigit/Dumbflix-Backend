FROM node:14
WORKDIR /usr/src/app
COPY . .
ENV DATABASE_HOST postgres
ENV DATABASE_PORT 5432
ENV DATABASE_DB dumbflix
ENV DATABASE_USER sigit
ENV DATABASE_PASSWORD Sotoy123
ENV DATABSE_URL	postgresql://sigit:Sotoy123@103.172.205.236:5432/dumbflix
ENV NODE_ENV production
RUN npm install
RUN npm install --save sequelize-cli -g
RUN npm install --save pg pg-hstore #Postgres
RUN npx sequelize db:migrate
EXPOSE 5000
CMD ["npm", "run", "go"]
