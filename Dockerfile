# Stage 1: Build the application
FROM maven:3.9-eclipse-temurin-21 AS build

WORKDIR /build

COPY . .

RUN mvn clean package


# Stage 2: Creating the runtime image
FROM eclipse-temurin:21-jre-alpine

WORKDIR /runtime

COPY --from=build /build/target/dockermastery-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

CMD [ "java", "-jar", "dockermastery-0.0.1-SNAPSHOT.jar" ]
