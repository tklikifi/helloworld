#
# Example docker file for Go projects.
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

RUN apt-get update && apt-get install -y \
    golang \
    && rm -rf /var/lib/apt/lists/*

# Copy programs.
COPY helloworld.go /src

# Compile.
RUN cd /src && go build helloworld.go

# Run program.
CMD ["/src/helloworld"]
