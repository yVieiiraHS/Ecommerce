FROM maven:3.8.3-jdk-11-slim AS build

RUN mkdir /project

COPY . /project

WORKDIR /project

RUN mvn clean package

FROM adoptopenjdk/openjdk11:jre-11.0.15_10-alpine

RUN mkdir /app

COPY --from=build /project/target/app.jar /app/app.jar

ENV PROFILE=stg

WORKDIR /app

EXPOSE 8082

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar", "app.jar"]