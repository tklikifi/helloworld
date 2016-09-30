#
# Example docker file for C projects.
#

FROM debian
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Install basic dependencies.
RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    libssl-dev \
    make \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Copy programs.
COPY helloworld.c /src

# Compile.
RUN cd /src && gcc -o helloworld helloworld.c

# Run program.
CMD ["/src/helloworld"]
