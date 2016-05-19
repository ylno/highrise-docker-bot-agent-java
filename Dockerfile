FROM maven:3.3.9-jdk-8
MAINTAINER Michael Frankl <mfrankl@seibert-media.net>

RUN git clone https://github.com/ylno/highrise_bot_agent_java.git /sources

WORKDIR /sources

RUN mvn package

CMD java -jar /sources/target/bot-agent-jar-with-dependencies.jar
