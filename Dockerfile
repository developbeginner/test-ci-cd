FROM amazoncorretto:17

ARG JAR_FILE=/build/libs/test-ci-cd-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "app.jar"]