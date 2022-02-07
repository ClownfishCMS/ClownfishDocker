FROM mysql/mysql-server:5.7.37


# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:11-jre-alpine
RUN apk add --no-cache curl tar bash
RUN mkdir -p /usr/clownfish
WORKDIR /usr/clownfish
<<<<<<< HEAD
RUN curl -o clownfish.zip https://www.clownfish-cms.de/cache/clownfishcms_0_7_6.zip
CMD ["/usr/bin/unzip", "clownfish.zip"]
# specify default command
#CMD ["/usr/bin/java", "-jar", "/clownfish-0.2.9-SNAPSHOT.war"]
=======
RUN curl -o clownfishcms_0_7_6.zip https://www.clownfish-cms.de/cache/clownfishcms_0_7_6.zip

# specify default command
# CMD ["/usr/bin/java", "-jar", "/clownfish-0.2.9-SNAPSHOT.war"]
>>>>>>> a31fab1e3f8ac9e9458a9a3bc3e62cbb6c273bb5
