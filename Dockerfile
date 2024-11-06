FROM public.ecr.aws/lambda/nodejs:14

COPY src/app.ts package*.json ./

RUN npm install

ENTRYPOINT ["/lambda-entrypoint.sh", "app.handler"] 