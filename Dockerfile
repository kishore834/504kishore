# Use the official Nginx image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all files (index.html + images) to the container
COPY . .

# Expose port 80 to access the webpage
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
