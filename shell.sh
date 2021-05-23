#!/bin/sh

echo "sudo ps -ef | grep demo | grep -v grep | awk '{print $2}' | xargs kill"
sudo ps -ef | grep demo | grep -v grep | awk '{print $2}' | xargs kill

echo "mvn clean"
mvn clean

echo "mvn package"
mvn package

echo "sudo env SERVER.PORT=8081 nohup java -jar target/demo-0.0.1-SNAPSHOT.jar &"
sudo env SERVER.PORT=8081 nohup java -jar target/demo-0.0.1-SNAPSHOT.jar &