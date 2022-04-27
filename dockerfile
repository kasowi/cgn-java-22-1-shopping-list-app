FROM openjdk:17

ENV ENVIRONMENT=prod

LABEL maintainer="kasowi@outlook.com"

ADD backend/target/app.jar app.jar

EXPOSE 8080

CMD [ "sh", "-c", "java -Dserver.port=$PORT -jar /shopping-list-app.jar" ]