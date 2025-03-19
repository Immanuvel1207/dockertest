# Use official Nginx image from Docker Hub
FROM nginx:latest

# Copy the index.html (or any other HTML file) to the Nginx default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Run Nginx in the foreground (required for Docker containers)
CMD ["nginx", "-g", "daemon off;"]
