FROM node:14-alpine
WORKDIR /home/app
ENV REACT_APP_IS_DEVELOPMENT=true
RUN npm install -g serve
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build
CMD serve -p $PORT -s build