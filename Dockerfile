# === Stage 1: Build the application ===
FROM eclipse-temurin:24-jdk-alpine AS builder

WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

# Copy source and build
COPY src ./src
RUN ./mvnw clean package -DskipTests

# === Stage 2: Run the application ===
FROM eclipse-temurin:24-jdk-alpine

WORKDIR /app

# Copy the JAR from the build stage
COPY --from=builder /app/target/e-commerce-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
