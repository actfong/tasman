FROM ruby:2.3.3-slim

RUN apt-get update

ENV APP_PATH /opt/tasman
RUN mkdir -p $APP_PATH
WORKDIR $APP_PATH
ADD Gemfile* $APP_PATH/
RUN bundle install

ADD . $APP_PATH/
EXPOSE 4567

CMD ["ruby", "tasman.rb", "-o", "0.0.0.0"]
