FROM rodolpheche/wiremock
LABEL maintainer="Shubham Sharma <shubhamsharma.ss345@gmail.com>"
 
ADD mappings/*.json /home/wiremock/mappings/
ADD __files/*.* /home/wiremock/__files/
 
CMD ["java", "-cp", "/var/wiremock/lib/*:/var/wiremock/extensions/*", "com.github.tomakehurst.wiremock.standalone.WireMockServerRunner", "--global-response-templating", "--verbose"]
