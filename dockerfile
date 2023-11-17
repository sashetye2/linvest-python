# Start with a Python base image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory to the working directory in the container 
COPY . .

# Install any dependencies
RUN pip install -r requirements.txt

# Define environment variable
ENV NAME World

# Expose port 80 
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
