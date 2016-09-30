#
# Example docker file for Node.js projects.
#

FROM node:6
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Install dependencies.
RUN npm install express

# Copy programs.
COPY helloworld.js /src

# Run program.
CMD ["node", "/src/helloworld.js"]
