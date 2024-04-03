# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
# Here, we don't have requirements.txt as we're not using any additional libraries
# If you have any, include them in requirements.txt and uncomment the next line
# RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV PYTHONUNBUFFERED=1

# Run the Python script when the container launches
CMD ["python", "english-to-morse-code.py"]