# Use the official Nginx image as a base
FROM nginx:latest

# Create a directory for the Nginx content
RUN mkdir -p /usr/share/nginx/html/nginx

# Add custom content to the directory
RUN echo '<html><body><h1>Hello from Nginx at /nginx!</h1></body></html>' > /usr/share/nginx/html/nginx/index.html

# Configure Nginx to serve content from the newly created directory
RUN sed -i 's|location / {|location /nginx {|g' /etc/nginx/conf.d/default.conf && \
    sed -i 's|root /usr/share/nginx/html;|root /usr/share/nginx/html/nginx;|g' /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80
