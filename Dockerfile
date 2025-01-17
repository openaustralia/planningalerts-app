FROM ruby:3.3.4
WORKDIR /app

# Run everything as a non-root "deploy" user
RUN groupadd --gid 1000 deploy \
    && useradd --uid 1000 --gid 1000 -m deploy

# Add sudo support so that we can install software by hand later on
RUN apt-get update \
    && apt-get install -y sudo \
    && echo deploy ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/deploy \
    && chmod 0440 /etc/sudoers.d/deploy

# Needed for sorbet extension for vscode
RUN apt install -y watchman

# Needed for rgeo geos support. See https://github.com/rgeo/rgeo/issues/227#issuecomment-1145169888
RUN apt-get install -y libgeos++-dev libgeos-dev

# Support for PA handling incoming email
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y postfix
RUN postconf -e "maillog_file=/dev/stdout"
COPY .devcontainer/virtual_alias /etc/postfix/virtual_alias
COPY .devcontainer/transport /etc/postfix/transport
COPY .devcontainer/incoming-email.sh /usr/local/bin/incoming-email.sh
RUN postconf -M -e "planningalerts/unix=planningalerts unix - n n - 50 pipe flags=R user=deploy directory=/app argv=/usr/local/bin/incoming-email.sh"
RUN postconf -e "virtual_alias_maps=regexp:/etc/postfix/virtual_alias"
RUN postconf -e "transport_maps=regexp:/etc/postfix/transport"
RUN postconf -e "mydestination=planningalerts.org.au"

# Useful for testing SMTP server
# Example usage:
# swaks --to no-reply@planningalerts.org.au --server postfix:25
RUN apt-get install -y swaks

# Install nodejs for running maizzle
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update
RUN apt-get install -y nodejs

# Install firefox for running some integration tests
RUN apt-get update; apt-get install -y firefox-esr

# Install the fish shell
RUN apt-get install -y fish

USER deploy

COPY --chown=deploy:deploy Gemfile /app/Gemfile
COPY --chown=deploy:deploy Gemfile.lock /app/Gemfile.lock
RUN bundle install

ENTRYPOINT ["./entrypoint.sh"]

CMD ["bin/rails", "server", "-p", "3000", "-b", "0.0.0.0"]

