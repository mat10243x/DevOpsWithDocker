FROM docker:cli
RUN apk add --no-cache bash git

WORKDIR /usr/src/app
COPY ./builder.sh .
ENTRYPOINT [ "/bin/bash", "builder.sh" ]


# docker run -e DOCKER_USER=username -e DOCKER_PWD=password_here -v /var/run/docker.sock:/var/run/docker.sock builder mluukkai/express_app username/testing2