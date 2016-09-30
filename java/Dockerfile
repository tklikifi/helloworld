#
# Example docker file for Java projects.
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
    default-jdk \
    default-jre \
    && rm -rf /var/lib/apt/lists/*

# Copy programs.
COPY HelloWorld.java /src

# Compile.
RUN javac /src/HelloWorld.java

# Run program.
CMD ["java", "-cp", "/src", "HelloWorld"]
