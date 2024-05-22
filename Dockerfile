# Use CentOS as the base image
FROM centos:latest

# Install required packages
RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nginx mariadb curl iputils && \
    yum clean all

# Expose port 8080
EXPOSE 8080

# Copy the text.sh file into the image
COPY text.sh /usr/local/bin/text.sh

# Label the image with your name
LABEL maintainer="YourName"

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
