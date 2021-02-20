# Base image
FROM node:lts-alpine

# Setup
COPY reviewer/* /

RUN ["apk", "add", "--no-cache", "bash"]
RUN ["npm", "--no-cache", "install"]
RUN ["chmod", "+x","/run.sh"]

WORKDIR /
ENTRYPOINT ["/run.sh"]
