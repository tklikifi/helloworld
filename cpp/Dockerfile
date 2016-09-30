#
# Example docker file for C++ projects.
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
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Copy programs.
COPY helloworld.cpp /src

# Compile.
RUN cd /src && g++ -o helloworld helloworld.cpp

# Run program.
CMD ["/src/helloworld"]
