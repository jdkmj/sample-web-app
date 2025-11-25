# Use Nginx from ECR Public (avoids Docker Hub rate limiting)
FROM public.ecr.aws/nginx/nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our index.html
COPY index.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 80

# Default command (Nginx)
CMD ["nginx", "-g", "daemon off;"]
