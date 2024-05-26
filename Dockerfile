FROM jetbrains/teamcity-minimal-agent

USER root
RUN apt-get update && apt-get install -y git sudo
RUN curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN npm install -g newman
RUN npm install -g newman-reporter-teamcity