FROM adoptopenjdk/openjdk8-openj9:alpine-slim

MAINTAINER smallchill@163.com

RUN mkdir -p /blade

WORKDIR /blade

EXPOSE 8800

ADD ./target/blade-api.jar ./app.jar

RUN apk add --update font-adobe-100dpi ttf-dejavu fontconfig

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]

CMD ["--spring.profiles.active=test"]
