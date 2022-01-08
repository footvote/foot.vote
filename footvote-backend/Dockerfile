FROM ruby:3.0.1

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

ENV APP /usr/src/app
RUN mkdir $APP
WORKDIR $APP

RUN apt-get install curl ca-certificates gnupg
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
RUN bash -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN apt-get update
RUN apt-get -y --allow-unauthenticated install postgresql-client-12

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

RUN bundle exec rails db:migrate
RUN bundle exec rails db:schema:dump

COPY . $APP/

CMD ["bundle", "exec", "rails", "server", "-p", "8080", "-b", "0.0.0.0", "-e", "development"]
