#Using single Docker build stage by upfront building content
FROM nginx:1.21.3-alpine
COPY build/* /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

#Using Docker multi stage Image build Process
FROM node:16.14-alpine3.14 AS build
WORKDIR /apps
COPY . .
RUN npm install
RUN npm run build

FROM nginx:1.21.3-alpine
MAINTAINER Goutham Kumar <chgoutam@test.com>
LABEL company_name="DLT Labs"
EXPOSE 80
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /apps/build/ /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
