# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set the maintainer information
LABEL maintainer="nani"

# Set the working directory to /Demo
WORKDIR /Demo

# Copy the shell script from the host to the container's working directory
COPY /home/Documents/shell.sh /Demo/shell.sh

# Run the shell script
RUN /Demo/shell.sh

# Update the package lists and install Python
RUN apt-get update && apt-get install -y python

# Install Vim
RUN apt-get install -y vim
