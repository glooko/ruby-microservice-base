FROM ruby:3.1.2-bullseye

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /apps
COPY . /apps

RUN bundle install

EXPOSE 2300
CMD ["bundle", "exec", "hanami", "s", "--host", "0.0.0.0"]