FROM maven:3.3.9-jdk-8
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>

RUN git clone https://github.com/bborbe/bot_agent_java.git /sources

WORKDIR /sources

RUN mvn test package

CMD java -jar /sources/target/bot-agent-jar-with-dependencies.jar
