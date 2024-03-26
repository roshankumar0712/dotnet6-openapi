# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run a simple Python script that prints "Hello, World!" when the container launches
CMD ["python", "-c", "print('Hello, World!')"]
