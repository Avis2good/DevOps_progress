FROM nginx

EXPOSE 80

MAINTAINER "avismcgill19@yahoo.com"

# Delete the default welcome to nginx page.
RUN rm /usr/share/nginx/html/*

# Copy over the custom default configs.
COPY ./default.conf /etc/nginx/conf.d/default.conf

# Start nginx in the foreground to play nicely with Docker.
CMD ["nginx", "-g", "daemon off;"]
