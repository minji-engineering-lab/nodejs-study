FROM public.ecr.aws/lambda/nodejs:16

WORKDIR /var/task

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

ENTRYPOINT ["/lambda-entrypoint.sh", "app.handler"] 
CMD [ "app.handler" ]