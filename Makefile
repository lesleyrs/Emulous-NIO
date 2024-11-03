all:
	mkdir -p bin
	javac -d bin $(shell find src -name *.java)
	java -cp bin server.Server

web:
	websockify 43595 localhost:43594

host:
	ssh -R 43594:localhost:43594 serveo.net
