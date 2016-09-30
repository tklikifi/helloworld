#
# Example docker file for C# (Mono) projects.
#

FROM mono
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Copy programs.
COPY helloworld.cs /src

# Compile.
RUN cd /src && mcs helloworld.cs

# Run program.
CMD ["mono", "/src/helloworld.exe"]
