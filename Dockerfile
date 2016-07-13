FROM maven:3.3-jdk-8
RUN mkdir -p /usr/src/rf2-to-json-conversion
WORKDIR /usr/src/rf2-to-json-conversion
ADD rf2-to-json-conversion /usr/src/rf2-to-json-conversion
RUN mvn install
CMD ["java", "-Xmx8g", "-jar", "target/rf2-to-json-conversion-1.1-SNAPSHOT-jar-with-dependencies.jar", "/data/config.xml"]
