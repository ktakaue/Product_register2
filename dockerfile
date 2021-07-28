FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential\
    libpq-dev\
    node.js\
    postgresql-client\
    yarn
WORKDIR /productapp2
COPY Gemfile  Gemfile.lock /productapp2/
RUN bundle install
