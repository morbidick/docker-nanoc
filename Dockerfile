FROM ruby:latest
MAINTAINER Jo Vandeginste <Jo.Vandeginste@gmail.com>
RUN DEPENDENCIES="imagemagick" \
	&& apt-get update && apt-get install -y --force-yes --no-install-recommends ${DEPENDENCIES} \
    && rm -rf /var/lib/apt/lists/*
CMD /usr/local/bundle/bin/nanoc
COPY Gemfile .
RUN bundle install
WORKDIR /app
