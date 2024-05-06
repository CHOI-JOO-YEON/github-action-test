FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY gradlew .
COPY gradlew.bat .
COPY gradle gradle

COPY build.gradle .
COPY settings.gradle .
COPY src ./src

RUN ./gradlew build --no-daemon

COPY build/libs/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
