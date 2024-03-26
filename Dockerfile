# Use an official Nginx image as the base
FROM hello-world:latest

# Install curl
RUN apk add --no-cache curl

# Download index.html from GitHub and copy it to Nginx default public directory
RUN curl -o /usr/share/nginx/html/index.html https://raw.githubusercontent.com/sasidharan3112/my_Jenkins/main/index.html

# Expose port 80 to allow external access to the web server
EXPOSE 80
