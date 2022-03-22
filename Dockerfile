FROM node:14-alpine
WORKDIR /home/app
# variable de ambiente para o container funcionar inicial mas muda pela do heroku ao fazer o deploy 
ENV PORT=3000 
RUN npm install -g serve
COPY package.json package.json
RUN npm install --production
COPY . .
RUN npm run build
CMD serve -p $PORT -s build