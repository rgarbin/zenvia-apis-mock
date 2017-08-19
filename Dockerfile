FROM ekino/wiremock

ADD ./wiremock /wiremock/

EXPOSE 8080

ADD ./wiremock/__files /wiremock/__files
ADD ./wiremock/mappings /wiremock/mappings

ENTRYPOINT ["java","-jar","wiremock.jar"]