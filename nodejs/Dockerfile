#
# Example docker file for Node.js projects.
#

FROM node
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Install dependencies.
RUN npm install express

# Copy programs.
COPY helloworld.js /src

# Run program.
CMD ["node", "/src/helloworld.js"]
