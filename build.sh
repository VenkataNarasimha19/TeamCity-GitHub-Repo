#!/bin/bash

# Compile the Java file
javac HelloWorld.java

if [ $? -eq 0 ]; then
  echo "Build successful, creating Docker image..."
  # Build the Docker image
  docker build -t my-java-app:1.0 .
else
  echo "Build failed. Please check for errors."
fi

