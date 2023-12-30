FROM bellsoft/liberica-openjdk-alpine:11.0.16.1-1

WORKDIR /app

COPY ./src /app/src

RUN javadoc -sourcepath /app/src/main/java -d /app/doc -subpackages ru

VOLUME /app/doc

CMD ["java", "-version"]
