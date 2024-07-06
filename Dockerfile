# Dockerfile for react application
# docker build -t node:v1 .

FROM node:14
ARG SRC_DIR=/OPT/i27
# which will be insidethe container
RUN mkdir $SRC_DIR
# Set the working directory inside container
WORKDIR $SRC_DIR

# Copy the current content to /opt/i27 directory, this our home dir
COPY . $SRC_DIR

# Install nodejs dependencies
RUN npm install

# Expose the port
EXPOSE 3000

# The script to start the application with different environments
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



