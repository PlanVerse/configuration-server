FROM amazoncorretto:17 AS builder

COPY gradlew .
COPY gradle gradle
COPY build.gradle.kts .
COPY settings.gradle.kts .
COPY src src

RUN chmod +x ./gradlew
RUN ./gradlew clean bootJar

FROM amazoncorretto:17

COPY --from=builder build/libs/*.jar app.jar

EXPOSE 50050

ENTRYPOINT ["java", "-Djasypt.encryptor.password=${CLOUD_ENC_PWD}", "-jar","app.jar"]