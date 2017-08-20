FROM java:8

ADD ./wiremock/__files /wiremock/__files
ADD ./wiremock/mappings /wiremock/mappings

WORKDIR /wiremock

RUN ["wget", "http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.7.1/wiremock-standalone-2.7.1.jar"]

CMD java -jar wiremock-standalone-2.7.1.jar --port $PORT --verbose
