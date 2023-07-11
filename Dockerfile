
# Base image
FROM ubuntu:latest

# Update package lists and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the application zip file to the container
COPY ./2129_crispy_kitchen.zip /var/www/html/

# Unzip the application within the container
RUN apt-get install -y unzip
RUN unzip /var/www/html/2129_crispy_kitchen.zip -d /var/www/html/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]

