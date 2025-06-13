# Use a lightweight Nginx base image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your game files to the nginx web directory
COPY index.html style.css game.js /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
