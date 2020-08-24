# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine
RUN apk add --no-cache curl tar bash
RUN mkdir -p /usr/clownfish
WORKDIR /usr/clownfish
RUN curl http://www.clownfish-cms.de/GetAsset?apikey=5omcWwYPuFXOv/WSdnmYgZv7vMJ3DNGkUH0NvfWpIKs=&mediaid=19
# specify default command
CMD ["/usr/bin/java", "-war", "/clownfish-0.2.9-SNAPSHOT.war"]
