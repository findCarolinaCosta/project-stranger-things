FROM node:14-alpine
WORKDIR /home/app
RUN npm install -g serve
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build
CMD serve -p $PORT -s build