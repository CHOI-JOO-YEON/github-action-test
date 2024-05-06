FROM eclipse-temurin:21-jdk-jammy AS build

WORKDIR /app

COPY gradlew .
COPY gradlew.bat .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src ./src

RUN ./gradlew build --no-daemon

FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

COPY --from=build /app/build/libs/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
