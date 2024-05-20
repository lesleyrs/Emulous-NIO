all:
	mkdir -p bin
	javac -d bin $(shell find src -name *.java)
	java -cp bin server.Server
