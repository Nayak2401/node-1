FROM Ubuntu:22.04
LABEL maintainer="nani"WORKDIR /Demo
COPY /home/Documents/shell.sh /Demo/shell.sh
RUN /Demo/shell.sh
RUN apt-get -y update && apt-get install -y python
RUN /Demo/shell.sh
RUN apt-get install vim -y
