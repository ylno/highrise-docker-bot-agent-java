default: build

clean:
	docker rmi ylna/highrise-bot-agent-java

build:
	docker build --no-cache --rm=true -t ylna/highrise-bot-agent-java .

run:
	docker run -e NSQD_ADDRESS=localhost:4150 -e NSQ_LOOKUPD_ADDRESS=localhost:4161 ylna/highrise-bot-agent-java:latest

shell:
	docker run -i -t ylna/highrise-bot-agent-java:latest /bin/bash

upload:
	docker push ylna/highrise-bot-agent-java
