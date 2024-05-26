# Node.js agent with newman for Teamcity

A docker image to run a [TeamCity](https://www.jetbrains.com/teamcity/) agent with Node.js (version 20) capabilities.
The image is based on the official [teamcity-minimal-agent](https://hub.docker.com/r/jetbrains/teamcity-minimal-agent/) and just adds a node.js and also [Newman](https://github.com/postmanlabs/newman) installation on top of it.

## Building the image

Simply run `docker build -t teamcity-newman-agent .`

## Running the agent

Since the image is based on the teamcity-minimal-agent, all required parameters of the base image are also required here.
You can run the image that you have already built, or pull the image from [docker hub](https://hub.docker.com/r/estebanx/teamcity-newman-agent/)

Docker hub example :

`docker run estebanx/teamcity-newman-agent:latest -it -e SERVER_URL="<url to TeamCity server>" -v <path to agent config folder>:/data/teamcity_agent/conf`

## License

MIT License
