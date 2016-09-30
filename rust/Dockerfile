#
# Example docker file for Rust projects.
#

FROM fnichol/rust:1.12.0
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Copy programs.
COPY helloworld.rs /src

# Compile.
RUN cd /src && rustc helloworld.rs

# Run program.
CMD ["/src/helloworld"]
