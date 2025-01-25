# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app code and dependency files
COPY app.py requirements.txt message.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the app's port
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
