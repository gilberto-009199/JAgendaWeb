# Builder
FROM maven:3.8.6-eclipse-temurin-17-alpine
WORKDIR /app
COPY ./ /app

RUN mvn clean install
RUN cp banco.sqlite ./target/
RUN cp db.accdb ./target/
RUN chmod +x /app/target/bin/webapp

EXPOSE 8080

ENTRYPOINT ["/bin/sh", "-c", "/app/target/bin/webapp"]