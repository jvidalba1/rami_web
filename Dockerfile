FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs-dev
RUN mkdir /rami_web
WORKDIR /rami_web
ADD Gemfile /rami_web/Gemfile
RUN bundle install
ADD . /rami_web
