FROM nginx:latest

# Add virtual host config for Magento
COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/ssl/cert.pem /etc/nginx/ssl/cert.pem
COPY ./config/ssl/cert.key /etc/nginx/ssl/cert.key
COPY ./config/sites-enabled/default.conf /etc/nginx/conf.d/default.conf
COPY ./config/includes /etc/nginx/includes