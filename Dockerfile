# Use the official OpenJDK base image
FROM openjdk:11-jdk-slim

# Copy the application files
COPY HelloWorld.java /app/HelloWorld.java

# Set the working directory
WORKDIR /app

# Compile the Java code
RUN javac HelloWorld.java

# Command to run the application
CMD ["java", "HelloWorld"]

