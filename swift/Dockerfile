#
# Example docker file for Swift projects.
#

FROM swiftdocker/swift
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Copy programs.
COPY helloworld.swift /src

# Run program.
CMD ["swift", "/src/helloworld.swift"]
