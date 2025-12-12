# Use Nginx from Google Artifact Registry Mirror
FROM gcr.io/google-containers/nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site
COPY index.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 80

# Default Nginx start command
CMD ["nginx", "-g", "daemon off;"]
