FROM alpine:edge

# Setup vnc base, utils and java
RUN echo http:"//dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk update && apk upgrade && apk add --no-cache \
  xvfb x11vnc fluxbox supervisor xterm bash wqy-zenhei novnc websockify curl openjdk17-jdk

# Download JFLAP
RUN curl https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar -o jflap.jar

RUN ln -s /usr/share/novnc/vnc_lite.html /usr/share/novnc/index.html

ADD supervisord.conf /etc/supervisord.conf

ADD ArquivoExemplo.txt ArquivoExemplo.txt
ADD Gramatica.jff Gramatica.jff

ENV DISPLAY :0
ENV RESOLUTION=1280x720

ENTRYPOINT ["/bin/bash", "-c", "/usr/bin/supervisord"]