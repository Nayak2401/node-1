# Use Ubuntu 22.04 as the base image
FROM python:3.11.9-slim

# Set the maintainer information
LABEL maintainer="nani"

# Set the working directory to /Demo
WORKDIR /Demo

# Copy the shell script from the host to the container's working directory
COPY shell.py .

# Run the shell script
#RUN /Demo/shell.sh

# Update the package lists and install Python
#RUN apt-get install -y vim

CMD ["python", "/Demo/shell.py"]
