FROM node:20 

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build
RUN npx prisma generate
RUN npm run dev

EXPOSE 3000

CMD ["node","dist/index.js"]