#
# MongoDB Dockerfile
#
# https://github.com/dockerfile/mongodb
#

# Pull base image.
FROM alpine

# Install MongoDB.
RUN \
  wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - && \
#   sudo add install gnupg && \
  

# Define mountable directories.
VOLUME ["/data/db"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["mongod"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017