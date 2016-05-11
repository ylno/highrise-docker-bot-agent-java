default: build

clean:
	docker rmi bborbe/bot-agent-java

build:
	docker build --no-cache --rm=true -t bborbe/bot-agent-java .

run:
	docker run -e NSQD_ADDRESS=localhost:4150 -e NSQ_LOOKUPD_ADDRESS=localhost:4161 bborbe/bot-agent-java:latest

shell:
	docker run -i -t bborbe/bot-agent-java:latest /bin/bash

upload:
	docker push bborbe/bot-agent-java
