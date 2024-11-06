FROM public.ecr.aws/lambda/nodejs:16

COPY ./src/app.ts package*.json ./

RUN npm install

ENTRYPOINT ["/lambda-entrypoint.sh", "app.handler"] 

CMD [ "app.handler" ]