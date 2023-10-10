# Use a specific version of Ubuntu as the base image
FROM ubuntu:20.04

# Update package lists and install the Java Development Kit (JDK)
RUN apt-get update && apt-get install -y openjdk-11-jdk

# Create a directory for your Java program
RUN mkdir -p /app/src/main/java

# Copy your Java program (Main.java) from src/main/java to /app/src/main/java
COPY src/main/java/Main.java /app/src/main/java/

# Set the working directory to /app/src/main/java
WORKDIR /app/src/main/java

# Compile your Java program
RUN javac Main.java

# Define the command to run when the container starts
CMD ["java", "Main"]
