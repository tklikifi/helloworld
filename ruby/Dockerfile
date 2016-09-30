#
# Example docker file for Ruby projects.
#

FROM ruby
MAINTAINER tkl@iki.fi

# Setup source directory.
RUN mkdir -p /src

# Copy programs.
COPY helloworld.rb /src

# Run program.
CMD ["ruby", "/src/helloworld.rb"]
