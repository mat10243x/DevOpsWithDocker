FROM devopsdockeruh/coursepage
WORKDIR /usr/src/html
RUN mv index.html index2.html
RUN echo -e "This leads to <a href=index2.html>DevOpsWithDocker</a> and is only to show that the solution for exercise 3.2 is working." > index.html
RUN echo >> index.html
RUN echo -e "<p>Version 0.7</p>" >> index.html
EXPOSE 80
