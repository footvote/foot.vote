FROM ruby:3.0.1

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

ENV APP /usr/src/app
RUN mkdir $APP
WORKDIR $APP

ENV BUNDLE_PATH /box
ENV GEM_PATH /box
ENV GEM_HOME /box
ENV RAILS_ENV development

COPY Gemfile* $APP/
ENV BUNDLER_VERSION=2.2.15
RUN gem install bundler:2.2.15
RUN bundle config set path 'vendor/cache'
RUN bundle config set deployment 'true'
RUN bundle install

COPY . $APP/

CMD ["bundle", "exec", "rails", "server", "-p", "8080", "-b", "0.0.0.0", "-e", "development"]
