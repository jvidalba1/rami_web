FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs-dev
RUN mkdir /rami_web
WORKDIR /rami_web
ADD Gemfile /rami_web/Gemfile
RUN bundle install
# RUN export AUTH0_CLIENT_ID=Qyr0d5mE6z2wGYssFc6S6xu67VHE3KrJ
# RUN export AUTH0_CLIENT_SECRET=M8ORvNjWHfcNXAdY0r_2CuGjmrQk5W4YSBF8Y4jFHd5uxvSIXnrCq0d12iQcqKWA
# RUN export AUTH0_DOMAIN=cguisaof.auth0.com
# RUN export AUTH0_CALLBACK_URL=http://localhost:3000/auth/auth0/callback
ADD . /rami_web

