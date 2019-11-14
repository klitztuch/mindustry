FROM alpine:3.10 AS download
RUN apk add --no-cache curl
RUN curl -o /server-release.jar -L https://github.com/Anuken/Mindustry/releases/download/v99/server-release.jar 

FROM openjdk:8-jre-slim
COPY --from=download server-release.jar .
CMD java -jar server-release.jar
