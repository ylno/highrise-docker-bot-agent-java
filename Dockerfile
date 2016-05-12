FROM maven:3.3.9-jdk-8
MAINTAINER Michael Frankl <mfrankl@seibert-media.net>

RUN git clone https://github.com/ylno/highrise-docker-bot-agent-java.git /sources

WORKDIR /sources

RUN mvn -Dmaven.test.skip=true package

CMD java -jar /sources/target/bot-agent-jar-with-dependencies.jar
