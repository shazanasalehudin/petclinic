FROM maven:3.9-eclipse-temurin-17
WORKDIR /app
COPY . .
RUN mvn -B package -DskipTests
EXPOSE 8080
CMD java -jar target/spring-petclinic-*.jar

