FROM openjdk:11.0.7
ARG JAR_FILE=target/registry-service-*.jar

ENV JAVA_OPTS="-Xms64m -Xmx256m"

COPY ${JAR_FILE} registry-service.jar

ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -server -jar registry-service.jar
