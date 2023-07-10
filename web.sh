#!/bin/bash

# Update the package index
#sudo apt update


echo " Installing Apache2 "
# Install Apache
sudo apt install apache2 -y
echo "....................."

# Start Apache service
sudo systemctl start apache2
# Specify the path to the zip file
#zip_file="home/bakare/Downloads/crispykitchen.zip"

# Specify the destination directory for extraction
#extracted_directory="/tmp/extracted_files"

# Extract the contents of the zip file to the specified directory
# 
cd /home/bakare/Downloads
unzip 2129_crispy_kitchen.zip -d extracted_directory

# Copy the extracted files to the Apache web root directory
sudo cp -r extracted_directory/* /var/www/html/

# Set appropriate permissions on the copied files and directories
sudo chmod -R 755 /var/www/html/


#echo " Creating Tem Directory "
# mkdir -p /tmp/webfiles

# cd /tmp/webfiles
# echo " ....................." 
# echo " Starting Artifact Deployment"

# wget https://www.tooplate.com/zip-templates/2098_health.zip

# unzip 2098_health.zip
# sudo cp -r 2098_health.zip/* /var/www/html/

#echo" Restarting service"
sudo systemctl restart apache2

#echo" Cleaning up"
#echo"#########################"
#rm -rf /tmp/webfiles
#echo"Done"




