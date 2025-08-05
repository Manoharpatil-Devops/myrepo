# Use official Apache HTTPD image
FROM httpd:2.4

# Copy your local HTML file into the container's default web root
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 (default for HTTP)
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
