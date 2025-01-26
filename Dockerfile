# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /small-app-project

# Copy the app code and dependency files
COPY app.py requirements.txt /small-app-project/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code and dependency files
COPY api /small-app-project/api

# Install dependencies
RUN pip install --no-cache-dir -r api/requirements.txt

# Expose the app's port
EXPOSE 8080 3000

# Command to run the app
CMD ["sh", "-c", "python /small-app-project/app.py & python /small-app-project/api/api.py"]
