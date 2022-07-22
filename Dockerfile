FROM nginx:1.15.8-alpine
USER root
EXPOSE 80
#config
COPY ./nginx.conf /etc/nginx/nginx.conf

#content, comment out the ones you dont need!
COPY ./*.html /usr/share/nginx/html/
# CMD ["nginx", "-g", "daemon off;"]