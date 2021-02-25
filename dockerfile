FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

# run.sh를 만들고 ENTRYPOINT ["run.sh"] 처럼 할 수도 있다
# exec java -jar /app.jar