FROM maven:3.3-jdk-8
RUN mkdir -p /usr/src/rf2-to-json-conversion
WORKDIR /usr/src/
RUN git clone https://github.com/IHTSDO/rf2-to-json-conversion.git
WORKDIR /usr/src/rf2-to-json-conversion
RUN mvn install
CMD ["java", "-Xmx8g", "-jar", "target/rf2-to-json-conversion-1.2-jar-with-dependencies.jar", "/data/config.xml"]
