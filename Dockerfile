# Gunakan nginx image yang ringan
FROM nginx:alpine

# Copy semua file website ke folder nginx
COPY src/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Jalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]