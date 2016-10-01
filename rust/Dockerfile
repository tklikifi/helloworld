#
# Example docker file for Rust projects.
#

FROM fnichol/rust
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Copy programs.
COPY helloworld.rs /src

# Compile.
RUN cd /src && rustc helloworld.rs

# Run program.
CMD ["/src/helloworld"]
