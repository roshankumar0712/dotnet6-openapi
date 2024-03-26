# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy a simple Python script that prints "Hello, World!" into the container
COPY app.py .

# Define a command to run when the container starts
CMD ["python", "app.py"]
