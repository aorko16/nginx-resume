FROM nginx:alpine
# Step 1: Remove default files (optional)
RUN rm -rf /usr/share/nginx/html/*

# Step 2: Ensure folder exists
RUN mkdir -p /usr/share/nginx/html

# Step 3: Copy your website files
COPY . /usr/share/nginx/html

# Step 4: Expose port and Run nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


