FROM ubuntu:latest  
RUN apt-get update  
RUN apt-get install --no-install-recommends --no-install-suggests -y curl  
ENV SITE_URL https://google.com/  
WORKDIR /data  
VOLUME /data  
CMD sh -c "curl -L $SITE_URL > /data/results"
