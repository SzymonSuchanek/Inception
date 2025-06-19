# Use Debian 10 (Buster) as the base image
FROM debian:buster-slim

# Install necessary dependencies for NGINX, SSL, and Certbot
RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    curl \
    certbot \
    python3-certbot-nginx \
    && rm -rf /var/lib/apt/lists/*

# Create directories for NGINX and SSL certificates
RUN mkdir -p /etc/nginx/ssl \
	&& mkdir -p /var/www/html

# Copy the NGINX configuration file
COPY conf /etc/nginx

# Copy the default HTML file
COPY index.html /var/www/html/index.html

RUN chmod +x /usr/local/bin/nginx-setup.sh

# Expose port 443 for HTTPS
EXPOSE 443

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
