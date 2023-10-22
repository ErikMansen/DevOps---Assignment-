# Start from the base Alpine image
FROM alpine:3.18.4

# Install OpenJDK 11 and Python3
RUN apk update && \
    apk add --no-cache openjdk11 python3


# Add the Hello World Java program
WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java

# Add the Hello World Python program
COPY HelloWorld.py .

# Use a single CMD instruction to run both programs
CMD java HelloWorld && python3 HelloWorld.py

