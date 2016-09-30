#
# Example docker file for Python 3.5 projects.
#

FROM debian
MAINTAINER tkl@iki.fi

ENV PYTHON_VERSION 3.5.2
ENV PYTHON_MD5 3fe8434643a78630c61c6464fe2e7e72

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

# Download, check MD5 checksum, compile and install Python.
RUN curl -s https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz -o python.tar.gz && \
    [ $(md5sum python.tar.gz | cut -d" " -f1) = $PYTHON_MD5 ] && \
    tar zxf python.tar.gz && \
    cd Python-$PYTHON_VERSION && \
    ./configure && \
    make && \
    make install && \
    cd / && \
    ln -s /usr/local/bin/python3 /usr/local/bin/python && \
    cd / && \
    rm -rf Python-$PYTHON_VERSION python.tar.gz

# Copy programs.
COPY helloworld.py /src

# Run program.
CMD ["python", "/src/helloworld.py"]
