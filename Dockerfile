FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD build/libs/docker101_springboot-boot.jar docker101_springboot.jar
ENV JAVA_OPTS=""
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egdfile:/dev/./urandom -jar /docker101_springboot.jar"]