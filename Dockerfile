FROM openjdk:8

RUN apt-get install wget \
  && wget http://mirror.olnevhost.net/pub/apache/zeppelin/zeppelin-0.6.1/zeppelin-0.6.1-bin-netinst.tgz \
  && tar xzvf zeppelin-0.6.1-bin-netinst.tgz \
  && rm zeppelin-0.6.1-bin-netinst.tgz 

RUN /zeppelin-0.6.1-bin-netinst/bin/install-interpreter.sh --all

EXPOSE 8080

CMD ["/zeppelin-0.6.1-bin-netinst/bin/zeppelin.sh"]
