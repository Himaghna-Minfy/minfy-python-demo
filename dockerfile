# Use official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY minfy-python-demo/app /app

# Run main.py when the container launches
CMD ["python", "main.py"]
