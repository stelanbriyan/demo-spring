sudo ps -ef | grep demo | grep -v grep | awk '{print $2}' | xargs kill
mvn clean
mvn package
sudo env SERVER.PORT=8081 nohup java -jar target/demo-0.0.1-SNAPSHOT.jar &