FROM ubuntu:precise

MAINTAINER Patrick Auld

RUN apt-get update
RUN apt-get install ncurses-dev make -y

ADD src/ ~/
WORKDIR ~/
RUN ls
RUN make
ENV PATH=$PATH:~/bin/
ENTRYPOINT ["nms"]
