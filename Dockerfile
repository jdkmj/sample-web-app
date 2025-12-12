FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/

# Use environment variable PORT for Cloud Run
ENV PORT 8080
RUN sed -i "s/listen 80;/listen $PORT;/" /etc/nginx/conf.d/default.conf

EXPOSE $PORT
CMD ["nginx", "-g", "daemon off;"]
