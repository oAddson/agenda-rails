# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ARG UID=1000
ARG GID=1000
ARG USER_NAME=docker
ARG PW=docker

RUN useradd -m ${USER_NAME} --uid=${UID} && echo "${USER_NAME}:${PW}" | chpasswd

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN chown ${UID}:${GID} /myapp
USER ${UID}:${GID}