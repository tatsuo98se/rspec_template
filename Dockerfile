FROM ruby:2.6.5-alpine

RUN apk upgrade --no-cache \
    && apk add --no-cache build-base libxml2-dev libxslt-dev

WORKDIR /work
COPY Gemfile ./
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install

CMD ["rspec"]