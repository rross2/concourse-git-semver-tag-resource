FROM ubuntu

RUN apt install   \
  ca-certificates \
  bash \
  jq \
  npm \
  nodejs \
  git

RUN npm install -g semver

# can't `git pull` unless we set these
RUN git config --global user.email "git@localhost" && \
    git config --global user.name "git"

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
