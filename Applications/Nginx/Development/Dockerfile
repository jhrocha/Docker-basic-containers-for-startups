FROM nginx

# COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY ruby-app-trakto.conf /etc/nginx/conf.d/default.conf
RUN service nginx start && nginx -t
RUN mkdir apps
EXPOSE 8080
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]