FROM ruby:3.2-bullseye

RUN mkdir /app
WORKDIR /app

ENV PATH="/app/bin:$PATH"

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle config set path 'vendor/bundle'
RUN bundle config set force_ruby_platform true

ADD . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
