FROM nginx:alpine

LABEL maintainer="CodeAlpha DevOps Intern"
LABEL description="Web server Nginx containerized with Docker"

COPY app/ /usr/share/nginx/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
