FROM dockerfile/java
MAINTAINER mkroli

RUN echo 'deb http://content.wuala.com/contents/mkroli/public/debian/ mkroli/' > /etc/apt/sources.list.d/mkroli.list && \
    curl https://content.wuala.com/contents/mkroli/public/debian/mkroli_public_key.asc | apt-key add - && \
    apt-get -qq update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --force-yes -y mnoclassifier && \
    apt-get clean

EXPOSE 8080
ENTRYPOINT ["/opt/mnoclassifier/bin/start-mnoc"]
